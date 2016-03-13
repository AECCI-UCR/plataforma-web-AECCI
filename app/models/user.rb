class User < ActiveRecord::Base
  devise :database_authenticatable,
         :confirmable,
         :recoverable,
         :registerable,
         :rememberable,
         :trackable,
         :validatable

  # Scopes
  default_scope { order(email: :asc) }
  scope :admins, lambda { where admin: true }
  scope :students, lambda { where admin: false }

  # Métodos de clase
  def self.search(carnet)
    carnet ? where('email LIKE ?', "%#{carnet}%") : students
  end

end
