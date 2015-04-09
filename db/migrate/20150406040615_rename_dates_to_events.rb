class RenameDatesToEvents < ActiveRecord::Migration
  def change
    rename_table :dates, :events
  end
end
