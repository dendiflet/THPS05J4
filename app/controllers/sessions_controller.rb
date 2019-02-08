class SessionsController < ApplicationController
  

  def new
@u = User.new

  end

    def create

    user = User.find_by_email(params[:email])
    byebug
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end

    end

	def login
		byebug
	  @my_user = User.find_by_email(params[:email])
	  if @user == nil
	    puts "#{}"*60
	    puts "cet utilisateur n'existe pas"
	    puts "#{}"*60 	
	  end
	  if @my_user.password == params[:password]
	    puts "#{}"*60
	    puts "bienvenue maurice"
			session[:user_id] = my_user.id
	    redirect_to root_url
	    puts session
	    puts "#{}"*60
	  else
	    puts "#{}"*60
	    puts "essaye encore avec ton mot de passe"
	    puts "#{}"*60  	
	    render :new
	  end
	end

  def destroy

  end

end



