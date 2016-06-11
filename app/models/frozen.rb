class Frozen < ActiveRecord::Base
  # validates :user_id, :presence => true
  validates :date_of_purchase, :presence => true

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
