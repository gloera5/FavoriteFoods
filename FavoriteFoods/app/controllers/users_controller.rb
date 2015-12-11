class UsersController < ApplicationController
  def index
  end
  
  def show
    @food = Food.new
  end

  
end
