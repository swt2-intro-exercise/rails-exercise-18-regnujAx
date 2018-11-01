class AuthorsController < ApplicationController
  def new
  end

  def index
  end

  def create
  	render plain: params[:author].inspect
  end
end
