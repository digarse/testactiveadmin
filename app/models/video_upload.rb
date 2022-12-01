class VideoUpload < ApplicationRecord
	# belongs_to :product
	has_one_attached :video
	has_one_attached :thumbnail
end
