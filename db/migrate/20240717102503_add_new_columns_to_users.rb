class AddNewColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :next_official_running_event, :string
    add_column :users, :preparation, :text
    add_column :users, :how_long_have_you_been_running, :string
    add_column :users, :run_frequency, :integer
    add_column :users, :other_sport, :text
  end
end
