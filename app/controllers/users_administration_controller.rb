class UsersAdministrationController < ApplicationController
  before_filter :authenticate_user!
  before_action :require_admin
  before_action :set_user, only: [:destroy, :make_admin]

  def index
    @users = User.page(params[:page]).order('email DESC')
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'El estudiante fue eliminado correctamente '
  end

  def make_admin
    @user.update_attribute(:admin, true)
    redirect_to users_url, notice: "#{@user.email} ha sido convertido en administrador"
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

end
