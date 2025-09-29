class CreateFashions < ActiveRecord::Migration[8.0]
  def change
    create_table :fashions do |t|
      t.string :weather
      t.integer :temperature
      t.date :recorded_on

      t.timestamps
    end
  end
end
