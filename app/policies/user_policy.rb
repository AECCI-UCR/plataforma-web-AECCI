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


  private

  def myself
    user == record
  end

  def administrator?
    user.admin?
  end

end
