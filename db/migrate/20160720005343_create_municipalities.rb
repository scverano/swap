class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.references :province, foreign_key: true
    end
  end
end
