class DynamicController < ApplicationController
  attr_accessor :one_gossip, :gossip, :user

  def home
  	puts "@"*60
  	puts "je suis dans home du dynamicController /server /terminal"
  	puts "@"*60
    @gossips = Gossip.all
    @users = User.all

	end

end
