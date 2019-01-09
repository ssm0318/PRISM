class Reply < ApplicationRecord
    belongs_to :comment
    belongs_to :author, class_name: 'User'

    after_create :create_notifications

    private

    def create_notifications
        origin = self.comment.target
        # 댓글 주인에게 노티
        Notification.create(recipient: self.comment.author, actor: self.author, target: self, action: 'to_comment', origin: origin)
        # 글 주인에게 노티
        Notification.create(recipient: self.comment.target.author, actor: self.author, target: self, action: 'to_author', origin: origin)
    end
end
