class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title,              null: false
      t.string :image_id,           null: false
      t.string :context,            null: false
      t.timestamps
    end
  end
end
