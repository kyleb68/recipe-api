class AddColumnsToRecipes < ActiveRecord::Migration[6.0]
  def change
    change_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :cook_time
      t.integer :prep_time
      t.integer :serving_amount
    end
  end
end
