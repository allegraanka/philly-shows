class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates_presence_of :fname, :username, :email, :password
  has_secure_password
end
