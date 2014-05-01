class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :restaurant
      t.date :date

      t.timestamps
    end
  end
end
