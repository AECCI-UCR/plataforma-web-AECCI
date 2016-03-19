class Course < ActiveRecord::Base
  # Associations
  has_many :tests

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :initials, presence: true, uniqueness: true
  validates :year, format: {with: /\A[1-5]\Z/}
end
