class ChannelsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_channel, except: [:create]

    def create
        
        if current_user.channels.where(name: params[:name]).length > 0
            render json: {
                successed: false,
                message: "#{params[:name]} 채널은 이미 존재하는 채널입니다.",
            }
        else
            c = Channel.create(user_id: current_user.id, name: params[:name])    
            
            render json: {
                successed: true,
                channel_id: c.id, 
            }
        end 
    end

    def update

        if (current_user.channels.where(name: params[:name]).length > 0) && (Channel.find(params[:id]).name != params[:name])
            render json: {
                successed: false,
                message: "#{params[:name]} 채널은 이미 존재하는 채널입니다.",
            }
        else
            @channel.name = params[:name] 
            @channel.save()
            
            render json: {
                successed: true,
            }
        end
    end

    def destroy
        @channel.destroy

        #얘는 ajax 안쓰고 걍 새로고침해도 될것같음!
        redirect_to friends_path
    end

    # add friend to a channel
    def add_friendship
        friendship_hash = {user_id: current_user.id, friend_id: params[:friend_id]}
        friendship = Friendship.where(friendship_hash).first
        friendship.channels << @channel
    end

    # delete friend from a channel
    def delete_friendship
        friendship_hash = {user_id: current_user.id, friend_id: params[:friend_id]}
        friendship = Friendship.where(friendship_hash).first
        friendship.channels.delete(@channel)
    end

    def edit_friendship
        #channel params[:id]
        #json [{friend_id:[1,3,4]}]
        # if friendship.channels.include? channel -> delete. not include-> add
        puts "========="
        puts params[:friend_ids]

        friends_ids = params[:friend_ids]

        friends_ids.each do |friend_id|
            friendship_hash = {user_id: current_user.id, friend_id: friend_id}
            friendship = Friendship.where(friendship_hash).first
            if friendship.channels.include? @channel
                friendship.channels.delete(@channel)
            else
                friendship.channels << @channel
            end
        end
        
        render json: {
        }
    end

    # add post to a channel (글의 공개범위 수정할 때만 필요, 처음 post생성 시에는 post create에서 entrance 처리됨)
    def add_post
        entrance_hash = {target_type: 'Post', target_id: params[:target_id], channel: @channel}
        entrance = Entrance.where(entrance_hash)
        if entrance.empty?
            Entrance.create(entrance_hash)
        end

    end

    # delete post from a channel
    def delete_post
        entrance_hash = {target_type: 'Post', target_id: params[:target_id], channel: @channel}
        entrance = Entrance.where(entrance_hash)
        if entrance.exists?
            entrance.destroy_all
        end

    end

    def add_answer
        entrance_hash = {target_type: 'Answer', target_id: params[:target_id], channel: @channel}
        entrance = Entrance.where(entrance_hash)
        if entrance.empty?
            Entrance.create(entrance_hash)
        end
    end

    def delete_answer
        entrance_hash = {target_type: 'Answer', target_id: params[:target_id], channel: @channel}
        entrance = Entrance.where(entrance_hash)
        if entrance.exists?
            entrance.destroy_all
        end
    end

    private
        def set_channel
            @channel = Channel.find(params[:id])
        end
    
end
