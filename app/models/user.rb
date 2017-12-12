class User < ActiveRecord::Base
    validates :username, presence: true
    validates :avatar_url, presence: true
    validates :avatar_url, format: { with: URI.regexp }, if: 'avatar_url.present?'    
    has_many :posts
    has_many :comments
    has_many :likes
validates_presence_of :email, :avatar_url, :username, :password
validates_uniqueness_of :email, :username

end