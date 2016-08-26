class CreateQsos < ActiveRecord::Migration
  def change
    create_table :qsos do |t|
      t.datetime :date
      t.string :de
      t.string :band
      t.string :mode
      t.string :country
      t.string :op

      t.timestamps null: false
    end
  end
end
