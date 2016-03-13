class AdsController < ApplicationController
  before_filter :authenticate_user!, except: :index
  before_action :require_admin, except: :index
  before_action :set_ad, only: [:show, :edit, :update, :destroy]

  def index
    @ads = Ad.all
  end

  def show
  end

  def new
    @ad = Ad.new
  end

  def edit
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save
      redirect_to @ad, notice: 'El anuncio se creó correctamente.'
    else
      render :new
    end
  end

  def update
    if @ad.update(ad_params)
      redirect_to @ad, notice: 'El anuncio se actualizó correctamente'
    else
      render :edit
    end
  end

  def destroy
    @ad.destroy
    redirect_to ads_url, notice: 'El anuncio se eliminó correctamente.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ad
    @ad = Ad.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ad_params
    params.require(:ad).permit(:title, :description, :image_url, :image_carousel_url, :important)
  end
end
