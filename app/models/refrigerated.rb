class Refrigerated < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :grocery_name, :presence => true
  validates :date_of_purchase, :presence => true
  validates :date_of_experation, :presence => true

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

  mount_uploader :image_of_grocery, Image_of_groceryUploader

end
