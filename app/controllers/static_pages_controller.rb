class StaticPagesController < ApplicationController
  def home
    @ads = Ad.find_by(important: true)
  end

  def about_us
  end
end
