class CreateSkill4s < ActiveRecord::Migration[5.0]
  def change
    create_table :skill4s do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
