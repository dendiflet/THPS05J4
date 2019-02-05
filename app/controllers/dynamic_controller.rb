class DynamicController < ApplicationController
  attr_accessor :one_gossip, :gossip, :user
  def home
  	puts "@"*60
  	puts "je suis dans home du dynamicController /server /terminal"
  	puts "@"*60
    @gossip = Gossip.all
	end
	
  def one_gossip
    @one_gossip = Gossip.find_by(id: params[:i])
        @user = User.find_by(id: @one_gossip.user)

  end

  def user 
    @one_gossip = Gossip.find_by(id: params[:i])
    @user = User.find_by(id: @one_gossip.user)
  end
  


end