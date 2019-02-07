#gossips_controller.rb


class GossipsController < ApplicationController

  def new
  end

  def home
  	puts "@"*60
  	puts "je suis dans home du dynamicController /server /terminal"
  	puts "@"*60
    @gossip = Gossip.all
  end
  
  def create
    puts "$" * 60
    puts "on est dans gossip controller create"
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    puts "création d'un nouveau gossip"
    @new_one = Gossip.new(title: params[:gossip][:title], content: params[:gossip][:content], user_id: params[:gossip][:user_id])

    if @new_one.save
  		puts @new_one
       redirect_to root_url
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      puts "$" * 60
      puts "########   ERREUR   ###############"
      render new_gossip_url
    end
  end

  def show
    @one_gossip = Gossip.find_by(id: params[:id])
    @user = User.find_by(id: @one_gossip.user)
    @city = City.find_by(id: @city_id)
  end

def edit
    @gossip_to_edit = Gossip.find_by(id:  params[:id])
end

def update

  @gossip_to_update = Gossip.find_by(id:  params[:id])
    posted_params = params.require(:gossip).permit(:title, :content)

  if @gossip_to_update.update(posted_params)
    redirect_to gossip_path
  else
    render :edit
  end
end

def destroy
  @gossip_to_destroy = Gossip.find_by(id:  params[:id])
    puts "@"*60
    puts "attention ca va supprimer !"
    puts "@"*60
    @gossip_to_destroy.destroy
    redirect_to root_path
end


end
