class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "You are now following #{friend.full_name}"
    else
      flash[:alert] = "There was an error following #{friend.full_name}"
    end
    redirect_to my_friends_path

  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "You are no longer following #{friendship.friend.full_name}"
    redirect_to my_friends_path

  end




end