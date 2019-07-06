class Attachment < ApplicationRecord
	has_many_attached :images
	validates :images, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
	validates :images, limit: { min: 1, max: 10 }

	def thumbnail
		return self.image.variant(resize: '300*300!').processed
	end
end
