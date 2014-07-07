class User < ActiveRecord::Base
  rolify
  validates_presence_of :first_name, :last_name, :phone, :height, :weight
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include CommonScopes
  after_create :set_role

  def set_role
    add_role :user
  end
end
