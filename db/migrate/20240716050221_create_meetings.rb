class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.date :date
      t.string :location
      t.string :weather_report
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
