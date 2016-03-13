class UsersAdministrationController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin
  before_action :set_user, only: [:destroy, :toggle_admin]

  def index
    @users =  User.students.page(params[:page])
    @admins = User.admins
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'El estudiante fue eliminado correctamente '
  end

  def toggle_admin
    message = if @user.admin?
                "A #{@user.email} se le ha revocado el rol de administrador"
              else
                "#{@user.email} ha sido convertido en administrador"
              end
    @user.update_attribute(:admin, !@user.admin)
    redirect_to users_url, notice: message
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

end
