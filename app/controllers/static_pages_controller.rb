class StaticPagesController < ApplicationController
  def home
    @ads = Ad.where(important: true)
  end

  def about_us
  end
end
