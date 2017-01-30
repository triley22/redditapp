class VotesController < ApplicationController
  before_action :set_link, only: [:create, :destroy]
  before_action :authenticate_user!

  def create
    if current_user.likes @link 
      @link.unliked_by current_user
      else
      @link.liked_by current_user
    end
  end

  def destroy
    if current_user.dislikes @link 
      @link.undisliked_by current_user
    else
      @link.disliked_by current_user
    end
  end

  private

  def set_link
    @link = Link.find(params[:id])
  end
end