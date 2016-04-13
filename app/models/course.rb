class Course < ActiveRecord::Base
  # Associations
  has_many :tests

  # Validations
  min_year = 1
  max_year = 5
  validates :name, presence: true, uniqueness: true
  validates :initials, presence: true, uniqueness: true
  validates :year, numericality: {only_integer: true, greater_than_or_equal_to: min_year, less_than_or_equal_to: max_year}

  # Scopes
  scope :by_year, lambda {order(:initials).group_by(&:year)}
end
