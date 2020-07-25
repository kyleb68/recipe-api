class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.text :direction_text
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
