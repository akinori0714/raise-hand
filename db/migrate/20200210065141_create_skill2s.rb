class CreateSkill2s < ActiveRecord::Migration[5.0]
  def change
    create_table :skill2s do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
