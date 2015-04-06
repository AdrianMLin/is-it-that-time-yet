class AddUserIdToDatetimes < ActiveRecord::Migration
  def change
    add_column :dates, :user_id, :integer
  end
end
