class User < ActiveRecord::Base
    validates :username, presence: true
    validates :avatar_url, presence: true
    validates :avatar_url, format: { with: URI.regexp }, if: 'avatar_url.present?'    
    has_many :posts
    has_many :comments
    has_many :likes
end