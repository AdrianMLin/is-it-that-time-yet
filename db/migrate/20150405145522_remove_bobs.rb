class RemoveBobs < ActiveRecord::Migration
  def change
    drop_table :bobs
  end
end
