class CreateUsersMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :users_meetings do |t|
      t.references :meeting, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
