class AddUserIdToDatetimes < ActiveRecord::Migration
  def change
    add_column :datetimes, :user_id, :integer
  end
end
