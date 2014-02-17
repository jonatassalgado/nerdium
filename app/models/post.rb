class Post < ActiveRecord::Base

	validates :title, presence: true

	# Gem friendly_id
	extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
end
