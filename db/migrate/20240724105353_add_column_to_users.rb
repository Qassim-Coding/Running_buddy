class AddColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :previous_run1, :string
    add_column :users, :previous_run2, :string
  end
end
