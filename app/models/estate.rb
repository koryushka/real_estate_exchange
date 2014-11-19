class Estate < ActiveRecord::Base
  belongs_to :users
  validates_presence_of :title, :country, :city, :district, :street, :house, :area, :price

  has_attached_file :photo, styles: {thumb: "300x300>"},
                  :url  => '/assets/images/:id/:style/:id.:extension' 


end
