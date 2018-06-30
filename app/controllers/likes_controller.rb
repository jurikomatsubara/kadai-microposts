class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'micropostをlikeしました。'
    redirect_to root_url
  end
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'micropostのlikeを解除しました。'
    redirect_to root_url
  end
end
