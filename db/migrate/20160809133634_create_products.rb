class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :active, default: true
      t.references :category, foreign_key: true
      t.references :ad_type, foreign_key: true
      t.references :status, foreign_key: true
      t.references :condition, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
