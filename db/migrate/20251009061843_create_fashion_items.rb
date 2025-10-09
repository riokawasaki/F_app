class CreateFashionItems < ActiveRecord::Migration[8.0]
  def change
    create_table :fashion_items do |t|
      t.references :fashion, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
