class SessionsController < ApplicationController
  

  def new
@u = User.new

  end

    def create
      # cherche s'il existe un utilisateur en base avec l'e-mail
      user = User.find_by(email: params[:email])

      # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
      if user && user.authenticate(password: params[:password_digest])
        session[:user_id] = user.id
        flash[:notice] = "Vous vous êtes connectés avec succès!"
      redirect_to root_path
        # redirige où tu veux, avec un flash ou pas

      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    end

	def login
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
	    reder :new
	  end
	end

  def destroy

  end

end



