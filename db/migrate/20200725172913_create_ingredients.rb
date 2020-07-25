class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :quantity
      t.string :unit_of_measurement
      t.string :description
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
