class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
      @one_gossip = Gossip.find_by(id: params[:i])
      @user = User.find(params[:id])
      # @user = User.find_by(id: @one_gossip.user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(post_params)
    redirect_to user_path(@user.id)
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(post_params)
    redirect_to user_path(user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def post_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id)
  end

end
