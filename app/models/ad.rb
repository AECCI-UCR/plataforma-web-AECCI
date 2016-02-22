class Ad < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  mount_uploader :image_carousel_url, ImageUploader

  validates :title,  presence: true
  validates :description, presence: true
  validates :image_url, presence:true
end
