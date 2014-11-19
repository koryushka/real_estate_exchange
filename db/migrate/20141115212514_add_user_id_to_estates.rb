class AddUserIdToEstates < ActiveRecord::Migration
  def change
    add_column :estates, :user_id, :integer
  end
end
