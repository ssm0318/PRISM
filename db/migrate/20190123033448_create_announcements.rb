# create announcement for our app
class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string  :title
      t.text    :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
