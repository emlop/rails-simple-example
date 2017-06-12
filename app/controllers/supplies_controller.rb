class SuppliesController < ApplicationController
  
  

  def index
    @supplies = Supply.all
  end
 
  def show
    @supply = Supply.find(params[:id])
  end
 
  def new
    @supply = Supply.new
  end
 
  def edit
    @supply = Supply.find(params[:id])
  end
 
  def create
    @supply = Supply.new(supply_params)
 
    if @supply.save
      redirect_to @supply
    else
      render 'new'
    end
  end
 
  def update
    @supply = Supply.find(params[:id])
 
    if @supply.update(supply_params)
      redirect_to @supply
    else
      render 'edit'
    end
  end
 
  def destroy
    @supply = Supply.find(params[:id])
    @supply.destroy
 
    redirect_to supplies_path
  end
 
  private
    def supply_params
      params.require(:supply).permit(:title, :text)
    end
end