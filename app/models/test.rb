class Test < ActiveRecord::Base
  mount_uploader :file_url, PdfUploader
  belongs_to :course

  validates :year, presence: true
  validates :teacher, presence: true
  validates :semester, presence: true
  validates :test_number, presence: true
  validates :file_url, presence: true
  validates :course_id, presence: true
end
