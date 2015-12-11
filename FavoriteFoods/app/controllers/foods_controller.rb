class FoodsController < ApplicationController
  
  def create
    @food = Food.new(food_params)
    @food.user = current_user
    
    
    if @food.save
      redirect_to '/profile', notice: "Food Added!"
     else
      flash[:error] = "Input error!"
       render :new
     end
  end

  def destroy
    @food = Food.find(params[:id])
    
     if @food.destroy
       flash[:notice] = "\"#{@food.name}\" was deleted successfully!"
       redirect_to '/profile'
     else
       flash[:error] = "Cannot Delete!"
       render :show
     end
  end
  
  private
  
  def food_params
    params.require(:food).permit(:name)
  end
end
