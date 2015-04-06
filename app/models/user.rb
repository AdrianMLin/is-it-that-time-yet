class User < ActiveRecord::Base
  validates(:password, :email, {presence: true} )
  validates :email, :username, {uniqueness: true}
  
  has_many :events, dependent: :destroy
  has_secure_password
end