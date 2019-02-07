class LikesController < ApplicationController


  def create
    if gossip.likes.create(user: current_user)
      redirect_to gossip_redirect(gossip), :notice => 'Liked!'
    else
      redirect_to gossip_redirect(gossip), :alert => 'An error prevented you from liking this post!'
    end
  end

  def destroy
    gossip.likes.where(user: current_user).destroy_all
    redirect_to gossip_redirect(gossip), :notice => 'Unliked!'
  end


  private

  def gossip
    @gossip ||= Gossip.find(params[:id])
  end



end
