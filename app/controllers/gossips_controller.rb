#gossips_controller.rb


class GossipsController < ApplicationController

  def new
  end

  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    #byebug
    puts "$" * 60
    puts "création d'un nouveau gossip"
    @new_one = Gossip.new(title: params[:gossip][:title], content: params[:gossip][:content], user_id: params[:gossip][:user_id])
    
  if @new_one.save # essaie de sauvegarder en base @gossip
    # si ça marche, il redirige vers la page d'index du site
    puts "$" * 20 + "  affichage du gossip"		
		puts @new_one
     redirect_to root_url
  else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    puts "$" * 60  	
    puts "########   ERREUR   ###############"
    redirect_to new_gossip_url
  end



  end


end

