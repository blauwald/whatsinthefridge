class CommentOnFrozen < ActiveRecord::Base
  validates :user_id, :presence => true

  belongs_to :frozen , :class_name => "Frozen", :foreign_key => "frozen_id"
end
