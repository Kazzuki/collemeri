class User::RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_mypages_url
    else
      render action: :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
