class Post < ApplicationRecord
    has_many :replies
    validates :title, presence: { message: 'You should write something'}
end
