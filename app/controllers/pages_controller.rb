class PagesController < ApplicationController
  def home
  end
  def index
  	render "public/index.html"
  end
end
