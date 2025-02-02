class CustomQuestion < ApplicationRecord
    has_and_belongs_to_many :tags, dependent: :destroy, as: :target
    belongs_to   :author, class_name: 'User'
    has_many   :assignments, dependent: :destroy, as: :target
    has_many     :comments, dependent: :destroy, as: :target
    has_many   :likes, dependent: :destroy, as: :target
    has_many   :entrances, as: :target, dependent: :destroy
    has_many   :channels, -> { order(id: :asc) }, through: :entrances
    has_many   :drawers, dependent: :destroy, as: :target
    has_and_belongs_to_many :tags, dependent: :destroy, as: :target

    after_create :create_notifications
    after_destroy :destroy_notifications

    scope :anonymous, -> (id) { where.not(author: User.find(id).friends).where.not(author: User.find(id)) }
    scope :named, -> (id) { where(author: User.find(id).friends).or(where(author:User.find(id))) }

    # 이 id의 유저가 custom question의 채널에 독자로 있어서 (친구 권한으로) 볼 수 있는 custom question들
    # 예: 2번 유저의 custom question들 중 4번 유저가 볼 수 있는 custom question 찾기 -> CustomQuestion.where(author_id: 2).accessible(4)
    scope :accessible, -> (id) { joins(:channels).where(channels: {id: User.find(id).belonging_channels.ids}).distinct }

    # 이 id의 channel에 속한 애들 구하기
    # 예: CustomQuestion.channel(3) 하면 3번 채널에 속한 answer들 나옴
    scope :channel, -> (id) { joins(:channels).where(channels: {id: id}).distinct }
    scope :search_tag, -> (tag) { joins(:tags).where("tags.content LIKE ? ", "%#{tag}%").distinct }
    scope :channel_name, -> (name) {joins(:channels).where(channels: {name: name}).distinct}

    private
    def create_notifications
        if self.ancestor_id != nil
            ancestor_author_id = CustomQuestion.find(self.ancestor_id).author_id
            if (self.author_id != ancestor_author_id) && (ancestor_author_id != 1)
                noti_hash = {recipient_id: ancestor_author_id, origin: CustomQuestion.find(ancestor_id), action: "repost"}
                if !Notification.where(noti_hash).empty?
                    Notification.where(noti_hash).each do |n|
                        n.invisible = true
                        n.read_at = DateTime.now()
                        n.save(touch: false)
                    end
                end
                Notification.create(recipient_id: ancestor_author_id, origin: CustomQuestion.find(ancestor_id), action: "repost", target: self, actor: self.author)
            end
        end
    end

    def destroy_notifications
        if self.ancestor_id != nil
            ancestor_author_id = CustomQuestion.find(self.ancestor_id).author_id
            if (self.author_id != ancestor_author_id) && (ancestor_author_id != 1)
                noti_hash = {recipient_id: ancestor_author_id, origin: CustomQuestion.find(ancestor_id), action: "repost"}
                if Notification.where(noti_hash).size > 1
                    n = Notification.where(noti_hash)[-2]
                    n.invisible = false
                    if (Notification.where(target: self).first.read_at != nil) && (n.read_at == nil)
                        n.read_at =  Notification.where(target: self).first.read_at
                    end
                    n.save(touch: false)
                end
                Notification.where(target: self).destroy_all
            end      
        end
    end
end
