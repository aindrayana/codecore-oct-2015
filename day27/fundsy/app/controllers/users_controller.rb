class UsersController < ApplicationController

  def new
    @user = User.new
    # then create a new.html.erb file inside views/users
  end

  def create
    user_params = params.require(:user).permit([:first_name, :last_name, :email,
                                                :password, :password_confirmation])
    user = User.new user_params
    if user.save
      redirect_to root_path, notice: "account created"
    else
      render :new
    end
  end

end
