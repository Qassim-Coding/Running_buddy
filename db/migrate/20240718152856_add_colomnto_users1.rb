class AddColomntoUsers1 < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :preference_date, :string
    add_column :users, :preference_hour, :integer
  end
end
