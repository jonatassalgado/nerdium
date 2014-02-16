class Post < ActiveRecord::Base

	# Gem friendly_id
	extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
end
