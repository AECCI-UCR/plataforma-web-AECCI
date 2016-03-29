class Ad < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  mount_uploader :image_carousel_url, ImageUploader

  allowed_files = ['image/jpeg', 'image/gif', 'image/png', 'image/jpg']

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true, file_content_type: {allow: allowed_files, mode: :strict}
  validates :image_carousel_url, file_content_type: {allow: allowed_files, mode: :strict}
end
