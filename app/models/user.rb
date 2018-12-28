class User < ApplicationRecord
  validates :name , presence: true
  #validates :email,presence: true,format: {with:/\A[\w+\-.]+@[a-z\d\-.]+.\/[a-z]+\z/i}
  has_secure_password
  #PW_REGEX = /\A(?=.＊?[a-z])(?=.＊?\d)[a-z\d]{8,32}\z/i
  #validates :password, presence: true, format: { with: PW_REGEX }
  #validates :password_confirmation, presence: true, format: { with: PW_REGEX }
  has_many :topics
  has_many :likes
  has_many :like_topics, through: :likes, source: 'topic'
end
