class Ad < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  mount_uploader :image_carousel_url, ImageUploader
end
