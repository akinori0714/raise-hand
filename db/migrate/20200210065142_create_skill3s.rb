class CreateSkill3s < ActiveRecord::Migration[5.0]
  def change
    create_table :skill3s do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
