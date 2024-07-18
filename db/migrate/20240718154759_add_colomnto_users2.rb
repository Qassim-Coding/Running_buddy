class AddColomntoUsers2 < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :relationship_number, :integer
    add_column :users, :meeting_number, :integer
  end
end
