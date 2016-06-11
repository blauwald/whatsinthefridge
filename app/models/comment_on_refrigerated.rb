class CommentOnRefrigerated < ActiveRecord::Base
  validates :user_id, :presence => true

  belongs_to :refrigerated , :class_name => "Refrigerated", :foreign_key => "refrigerated_id"
end
