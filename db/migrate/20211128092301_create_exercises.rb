class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.integer :time, null: false
      t.integer :menu_id, null: false
      t.timestamps
    end
  end
end
