class Teacher < ActiveRecord::Base
  has_many :tests

  # Validations
  validates :name, presence: true, uniqueness: true
end
