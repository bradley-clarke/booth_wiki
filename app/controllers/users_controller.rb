class UsersController < ApplicationController

  def index
    @users = User.all
    #code
  end

  def show
    @user = User.find(params[:id])
  end


end
