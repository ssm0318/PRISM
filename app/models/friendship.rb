class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :friend, :class_name => "User"
    has_and_belongs_to_many :channels
    
    after_create :create_notifications, :delete_request, :create_inverse, :default_channel
    after_destroy :destroy_notifications

    private

    def create_notifications
        Notification.create(recipient: self.friend, actor: self.user, target: self, origin: self.user, action: "friendship")
    end
# 친구 끊으면 - assignment 없어짐
# 친구였던 시절 노티들 없어짐...? ㅠㅠ
# 친구 되면 - 익명 관련 노티들 없어ㅣㅈ.ㅁ
    # 친구공개 아니었다가 친구그룹 범위가 추가된 것 : 그걸 봤던 -> 이건 friendship에 해놔야할듯

    def destroy_notifications
        Notification.where(target: self).destroy_all
    end

    # 역 친구 관계를 만들어서 상대방도 나를 .friends 쿼리로 검색할 수 있게 한다.
    def create_inverse
        friendship_hash = { user: self.friend, friend: self.user }
        # create_inverse가 recursive하게 call되지 않도록 확인해준다.
        if Friendship.where(friendship_hash).empty?
            Friendship.create(friendship_hash)
        end
    end

    # 친추를 받아서 친구 모델이 생성되고 나면 해당 친추 모델을 삭제한다.
    def delete_request
        f = FriendRequest.where(requester: self.friend, requestee: self.user)
        f.destroy_all
    end

    def default_channel
        # 현재는 친구가 default로 삼촌 채널에 들어가도록 설정해놓음. (추후 변경 가능)
        Channel.where(user: user, name: "삼촌").first.friendships << self
    end
end
