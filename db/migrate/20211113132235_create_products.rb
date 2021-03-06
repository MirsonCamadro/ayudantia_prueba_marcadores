class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :product_type, foreign_key: true

      t.timestamps
    end
  end
end
