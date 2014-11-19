class AddPhotoToEstates < ActiveRecord::Migration
  def change
    add_attachment :estates, :photo
  end
end
