class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.string :name
      t.datetime :datetime
      t.string :notes
    end
  end
end
