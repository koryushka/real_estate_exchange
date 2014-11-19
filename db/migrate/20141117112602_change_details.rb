class ChangeDetails < ActiveRecord::Migration
  def change
    remove_column :estates, :area
    add_column :estates, :area, :integer
  end
end
