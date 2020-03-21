class CreateSkill5s < ActiveRecord::Migration[5.0]
  def change
    create_table :skill5s do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
