class Feed < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
	validates :uri, presence: true
	validates_with ::FeedValidator
end