class AddTimeToMeetings < ActiveRecord::Migration[7.1]
  def change
    add_column :meetings, :time, :time
  end
end
