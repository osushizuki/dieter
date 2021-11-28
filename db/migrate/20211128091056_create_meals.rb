class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :calorie, null: false
      t.text :explanation, null: false
      t.timestamps
    end
  end
end
