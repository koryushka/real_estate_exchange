class CreateEstates < ActiveRecord::Migration
  def change
    create_table :estates do |t|
      t.string :title
      t.string :country
      t.string :city
      t.string :district
      t.string :street
      t.string :house
      t.integer :flat
      t.string :area
      t.integer :price

      t.timestamps
    end
  end
end
