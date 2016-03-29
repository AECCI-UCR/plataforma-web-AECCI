class Course < ActiveRecord::Base
  # Associations
  has_many :tests
  min_year = 1
  max_year = 5
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :initials, presence: true, uniqueness: true
  validates :year, numericality: {only_integer: true, greater_than_or_equal_to: min_year, less_than_or_equal_to: max_year}
end
