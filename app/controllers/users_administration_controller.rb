class UsersAdministrationController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:destroy, :toggle_admin]

  def index
    authorize User
    @users = User.students.search(params[:search]).page(params[:page])
    @admins = User.admins
  end

  def destroy
    authorize @user
    @user.destroy
    redirect_to users_url, notice: 'El estudiante fue eliminado correctamente '
  end

  def toggle_admin
    authorize @user
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

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_administration_params
    params.require(:user).permit :admin
  end

end
