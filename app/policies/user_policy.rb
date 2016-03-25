class UserPolicy < ApplicationPolicy
  def index?
    administrator?
  end

  def destroy?
    # No puedo eliminarme yo mismo
    administrator? && (not myself)
  end

  def toggle_admin?
    administrator? && (not myself)
  end

end
