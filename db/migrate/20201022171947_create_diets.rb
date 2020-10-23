class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.date :date_initial
      t.date :date_final
      t.float :weight
      t.float :height
      t.float :ideal_weight
      t.time :schedule
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
