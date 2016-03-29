class Test < ActiveRecord::Base
  # Associations
  belongs_to :course
  belongs_to :teacher

  # Scopes
  scope :order_for_table, lambda { joins(:course, :teacher).order('courses.initials', 'teachers.name', year: :desc, semester: :asc, test_number: :asc) }

  # CarrierWeaver
  mount_uploader :file_url, PdfUploader

  # Validations
  validates :year, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1981, less_than_or_equal_to: Time.now.year}
  validates :teacher_id, presence: true
  validates :semester, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :test_number, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :file_url, presence: true, file_size: {less_than_or_equal_to: 20.megabytes, message: ' debe ser menor a %{count}.'}
  validates :course_id, presence: true

end
