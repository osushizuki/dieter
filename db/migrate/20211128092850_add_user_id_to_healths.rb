class AddUserIdToHealths < ActiveRecord::Migration[6.0]
  def change
    add_column :healths, :user_id, :integer
  end
end
