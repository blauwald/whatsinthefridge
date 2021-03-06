class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :user_id, :presence => true

  has_many :frozens , :class_name => "Frozen", :foreign_key => "user_id"
  has_many :refridgerateds , :class_name => "Refrigerated", :foreign_key => "user_id"
end
