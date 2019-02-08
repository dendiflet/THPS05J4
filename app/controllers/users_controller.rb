require 'bcrypt' 

class UsersController < ApplicationController
  
  include BCrypt
  
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
puts "#"*60
puts "ici la création d'un user"
# permitted = params.permit(user: [:first_name, :last_name, :description, :email, :age, :city_id])

    post_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :password, :password_confirmation, :city_id)


# @user.first_name = permitted[:user][:first_name]
# @user.last_name = permitted[:user][:last_name]
# @user.description = permitted[:user][:description]
# @user.email = permitted[:user][:email]
# @user.age = permitted[:user][:age]
# @user.city_id = permitted[:user][:city_id]

#puts post_params

@user = User.new(first_name: post_params[:first_name], last_name: post_params[:last_name], description: post_params[:description], email: post_params[:email], age: post_params[:age], city_id: post_params[:city_id], password:post_params[:password] )

#post_params[:password] != post_params[:cnfrmpassword]


    if post_params[:password] != post_params[:password_confirmation]
      puts "please your password"
      render :new

    elsif @user.save!
      puts "user created succes"
      puts "#"*60
      flash[:success] = "Compte créé !"
      redirect_to sessions_path(@user.id)
    else
      puts "please redo !"
      puts "#"*60

     render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end


end
