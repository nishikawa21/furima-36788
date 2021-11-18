class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :explanation
      t.integer :category
      t.integer :status
      t.integer :postage
      t.integer :prefecture
      t.integer :days
      t.string :price
      t.timestamps
    end
  end
end
