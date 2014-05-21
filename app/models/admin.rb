class Admin < ActiveRecord::Base

  has_and_belongs_to_many :roles

  ROLES = %w[super_admin blogger]

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
