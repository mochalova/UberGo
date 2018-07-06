class User < ApplicationRecord
  ROLES = ['admin', 'user']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  ROLES.each do |role|
    define_method "#{role}?" do
      role == self.role
    end
  end
end
