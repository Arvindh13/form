class CformsController < ApplicationController

  #before_action :authenticate_user!

  def index
    @cform = Cform.all
  end

  def show
  	@cform = Cform.find(params[:id])
  end

  def new
  end

  def static
  end

  def create
  	@cform = Cform.new(cform_params)
 
  	@cform.save
  	redirect_to @cform
  end

  private
  	def cform_params
  		params.require(:cform).permit(:name, :email, :mobile)
  	end
end
