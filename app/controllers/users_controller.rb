class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the trough!"
      redirect_to @user
    else
      flash[:error] ="Try with another email adress or your password "
      render "new"
    end
  end



  def show
    @user = User.find(params[:id])
  end


def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end

def index
     @users = User.all
end
  private
    def user_params
      params.require(:user).permit(:email, :password,
                                            :password_confimation)
    end
end
