class LoginController < ApplicationController
  before_filter :redirect_to_profile, if: :current_user
  
  def index
  end
  
  private
  
  def redirect_to_profile
    redirect_to '/profile'
  end
  
end
