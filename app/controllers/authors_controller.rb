class AuthorsController < ApplicationController
  def new
  end

  def index
  end

  #def show
    #@author = Author.find(params[:id])
  #end

  def create
  	render plain: params[:author].inspect
  	#@author = Author.new(author_params)
 
  	#@author.save
  	#redirect_to @author
  	#redirect_back fallback_location: @author
  end

  private
  	def author_params
  		params.require(:author).permit(:first_name, :last_name, :homepage)
  	end
end
