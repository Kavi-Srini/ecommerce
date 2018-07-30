class Product < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :category

	validates :category_id, presence: :true
	validates :image, presence: :true 
end
