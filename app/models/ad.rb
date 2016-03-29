class Ad < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  mount_uploader :image_carousel_url, ImageUploader

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true, file_content_type: {allow: ['image/jpeg', 'image/gif', 'image/png', 'image/jpg'], mode: :strict}
  validates :image_carousel_url, validates_file_content_type: {allow: ['image/jpeg', 'image/gif', 'image/png', 'image/jpg'], mode: :strict}
end
