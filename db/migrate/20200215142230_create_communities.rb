class CreateCommunities < ActiveRecord::Migration[5.0]
  def change
    create_table :communities do |t|
      t.string :name,         null: false
      t.string :explain,      null: false
      t.string :image_id,     null: false
      t.index :name,          unique: true
      t.timestamps
    end
  end
end
