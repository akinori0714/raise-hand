class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name,               null: false
      t.string :explain,            null: false
      t.string :image_id,           null: false
      t.string :chachcopy,          null: false
      t.string :url,                null: false
      t.string :area,               null: false
      t.string :recruitamount,      null: false
      t.string :recruitperson,      null: false
      t.string :jointype,           null: false
      t.string :reward,             null: false
      t.timestamps
    end
  end
end
