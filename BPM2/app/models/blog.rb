class Blog < ActiveRecord::Base
    has_many :posts, through: :owners, dependent: :destroy
end
