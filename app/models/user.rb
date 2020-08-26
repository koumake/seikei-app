class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meetings
  has_many :messages
  has_many :entries
  has_many :groups, through: :group_users
  has_many :group_users
  has_many :GroupMessages
  has_many :reviews
  has_many :ReviewComments
end
