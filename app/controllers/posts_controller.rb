class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :check_mine, only: [:edit, :update, :destroy]
    
    def create
        @post = Post.create(post_params)

        if !@post.tag_string.nil?
            tag_array = @post.tag_string.gsub("\r\n", '\n').split('\n')
            tag_array.each do |tag|
                new_tag = Tag.create(author_id: @post.author.id, content: tag, target: @post)
                @post.tags << new_tag
            end
        end

        channels = []   # 선택된 채널들을 갖고 있다.
        channels = Channel.find(params[:c]) if params[:c]
        channels.each do |c|
            Entrance.create(channel: c, target: @post)
        end

       
        redirect_to root_path
    end

    def show
        @anonymous = @post.author_id != current_user.id && !(current_user.friends.include? @post.author)
    end

    def edit
        unless ajax_request?
            redirect_to root_url
        else
            html_content = render_to_string :partial => 'posts/form', :locals => { :post => @post }
            render :json => { 
                html_content: "#{html_content}",
            }
        end
    end

    def update
        if @post.update(post_params)
            @post.tags.destroy_all

            if !@post.tag_string.nil?
                tag_array = @post.tag_string.gsub("\r\n", "\n").split("\n") 
                tag_array.each do |tag|
                    new_tag = Tag.create(author_id: @post.author.id, content: tag, target: @post)
                    @post.tags << Tag.find(new_tag.id)
                end
            end

            Entrance.where(target: @post).destroy_all
            channels = []   # 선택된 채널들을 갖고 있다.
            channels = Channel.find(params[:c]) if params[:c]
            channels.each do |c|
                Entrance.create(channel: c, target: @post)
            end

            channel_names = ""
            channels.each do |channel|
                channel_names += channel.name + " "
            end

            render :json => {
                id: @post.id,
                channels: channel_names
            }
        else
            redirect_to root_url
        end
    end

    def destroy
        @post.destroy 
    end

    private
        def set_post
            @post = Post.find(params[:id])
        end

        def post_params
            params.require(:post).permit(:author_id, :content)
        end 

        def check_mine
            if @post.author_id != current_user.id
                redirect_to root_url
            end
        end
        def ajax_request?
            (defined? request) && request.xhr?
        end
end
