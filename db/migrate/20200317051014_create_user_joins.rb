class CreateUserJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :user_joins do |t|
      t.references :user, foreign_key: true
      t.references :jointype, foreign_key: true
      t.timestamps
    end
  end
end
