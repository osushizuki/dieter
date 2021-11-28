class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.float :every_weight, null: false
      t.timestamps
    end
  end
end
