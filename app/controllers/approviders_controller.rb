class ApprovidersController < ApplicationController
  
  def show
  	@user = Approvider.find(params[:id])
  end

  def new
  	@user = Approvider.new
  end


end
