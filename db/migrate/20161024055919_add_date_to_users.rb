class AddDateToUsers < ActiveRecord::Migration[5.0]
  def change
   add_column :users, :date, :date
  end
end
