class CreateBobs < ActiveRecord::Migration
  def change
    create_table :bobs do |t|

      t.timestamps
    end
  end
end
