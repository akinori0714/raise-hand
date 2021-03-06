class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.string :content
      t.string :image
      t.references :community, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
