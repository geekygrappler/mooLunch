class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :option
      t.string :description
      
      t.references :lunch, index: true

      t.timestamps
    end
  end
end
