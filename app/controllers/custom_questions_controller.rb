class CustomQuestionsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_custom_question, only: [:show, :destroy ]
    before_action :check_mine, only: [:destroy]

    def create
        @custom_question = CustomQuestion.create(custom_question_params)

        if !@custom_question.tag_string.nil?
            tag_array = @custom_question.tag_string.gsub("\r\n", '\n').split('\n')
            tag_array.each do |tag|
                new_tag = Tag.create(author_id: @custom_question.author.id, content: tag, target: @custom_question)
                @custom_question.tags << new_tag
            end
        end

        channels = []   # 선택된 채널들을 갖고 있다.
        channels = Channel.find(params[:c]) if params[:c]
        channels.each do |c|
            Entrance.create(channel: c, target: @custom_question)
        end
 
        redirect_to root_path
    end

    def show
        @anonymous = @custom_question.author_id != current_user.id && !(current_user.friends.include? @custom_question.author)
    end


    def destroy
        # 창조자이며, 누군가가 repost한 사람이 있는 경우
        if !CustomQuestion.where(ancestor_id: params[:id]).empty?
            Notification.where(origin: @custom_question, action: "repost", recipient_id: @custom_question.author_id).destroy_all
            # 실제로는 삭제되지 않고 author가 admin으로 바뀐다. (얘네를 repost한 애들이 있다면 ancestor_id를 그대로 유지해야 하기 때문)
            @custom_question.author_id = 1
            @custom_question.save
        # 창조자이지만 repost한 사람이 없거나, 창조자가 아닌 경우
        else
            @custom_question.destroy
        end
    end

    # custom question repost new
    # custom question을 repost했을 때 새로운 custom_question 만들기
    def repost_new
        unless ajax_request?
            redirect_to root_url
        else
            @custom_question = CustomQuestion.find(params[:id])
            html_content = render_to_string :partial => 'custom_questions/repost_form', :locals => { :@custom_question => @custom_question }
            render :json => { 
                html_content: "#{html_content}",
            }

        end

    end

    # custom question repost create
    def repost_create
        @repost = CustomQuestion.create(author_id: current_user.id, content: CustomQuestion.find(params[:id]).content, repost_message: params[:repost_message], ancestor_id: params[:id])
            # if !@custom_question.tag_string.nil?
        #     tag_array = @custom_question.tag_string.gsub("\r\n", '\n').split('\n')
        #     tag_array.each do |tag|
        #         new_tag = Tag.create(author_id: @custom_question.author.id, content: tag, target: @custom_question)
        #         @custom_question.tags << new_tag
        #     end
        # end

        channels = []   # 선택된 채널들을 갖고 있다.
        channels = Channel.find(params[:c]) if params[:c]
        channels.each do |c|
            Entrance.create(channel: c, target: @repost)
        end

        redirect_to root_path
    end

    # custom question repost message edit
    def repost_edit
        unless ajax_request?
            redirect_to root_url
        else
            c = CustomQuestion.find(params[:id])
            repost_message = c.repost_message
            html_content = render_to_string :partial => 'custom_questions/repost_form', :locals => { :repost_message => repost_message, :@custom_question => c }
            render :json => { 
                html_content: "#{html_content}",
            } 
        end
    end

    def repost_update 
        if @repost.update(repost_params)
            @repost.tags.destroy_all

            if !@repost.tag_string.nil?
                tag_array = @repost.tag_string.gsub("\r\n", "\n").split("\n") 
                tag_array.each do |tag|
                    new_tag = Tag.create(author_id: @repost.author.id, content: tag, target: @repost)
                    @repost.tags << Tag.find(new_tag.id)
                end
            end

            Entrance.where(target: @repost).destroy_all
            channels = []   # 선택된 채널들을 갖고 있다.
            channels = Channel.find(params[:c]) if params[:c]
            channels.each do |c|
                Entrance.create(channel: c, target: @repost)
            end

            channel_names = ""
            channels.each do |channel|
                channel_names += channel.name + " "
            end
            
            render :json => {
                id: @repost.id,
                channels: channel_names
            }
        else
            redirect_to root_url
        end
    end

    private
        def set_custom_question
            @custom_question = CustomQuestion.find(params[:id])
        end

        def custom_question_params
            params.require(:custom_question).permit(:author_id, :content, :tag_string)
        end 

        def check_mine
            if @custom_question.author_id != current_user.id
                redirect_to root_url
            end
        end
        def ajax_request?
            (defined? request) && request.xhr?
        end
    
end
