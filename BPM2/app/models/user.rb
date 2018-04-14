class User < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_many :messages, dependent: :destroy
    has_many :blogs, through: :owners, dependent: :destroy
end
