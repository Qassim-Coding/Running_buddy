class ChangeRunningPaceToUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :running_pace, :integer
  end
end