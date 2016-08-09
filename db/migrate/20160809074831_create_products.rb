class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :active, default: true
      t.boolean :is_selling, default: true
      t.boolean :is_available, default: true
      t.boolean :is_new, default: true
      t.boolean :is_approved, default: false
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
