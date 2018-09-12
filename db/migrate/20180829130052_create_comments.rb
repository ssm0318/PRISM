class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :author,            null: false, foreign_key: { to_table: :users }
      t.belongs_to :recipient,         null: false, foreign_key: { to_table: :users }
      t.belongs_to :answer,            null: false
      t.text       :content,           null: false

      # TODO: re-comment model 만들기
      t.timestamps
    end
  end
end
