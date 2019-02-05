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
    @new_one = Gossip.create!(title: params[:gossip][:title], content: params[:gossip][:content], user_id: params[:gossip][:user_id])
    puts "$" * 20 + "  affichage du gossip"		
		puts @new_one
    puts "$" * 60  	
 redirect_to root_url
  end


end

