class ApprovidersController < ApplicationController
  
  def show
  	@approvider = Approvider.find(params[:id])
  end

  def new
  	@approvider = Approvider.new
  end

  def create
  	@approvider = Approvider.new(params[:approvider])
  	if @approvider.save
  		redirect_to @approvider
  	else
  		render 'new'
  	end
  end

  def edit
    @approvider = Approvider.find(params[:id])
  end

  def update
  	@approvider = Approvider.find(params[:id])
  	if @approvider.update_attributes(params[:approvider])
  		redirect_to @approvider
  	else
  		render 'edit'
  	end
  end




end
