class VotesController < ApplicationController
  before_action :set_link, only: [:create, :destroy]
  before_action :authenticate_user!
  respond_to :js

  def create
    if current_user.voted_for? @link
      @link.vote_by voter: current_user
    else
      @link.unvote_by current_user
    end

    respond_with @link
  end

  def destroy
    if @link.downvote_from current_user
      @link.unvote_by voter: current_user, vote: 'bad'
    else
      @link.vote_by voter: current_user, vote: 'bad'
    end

    respond_with @link
  end
  
  private

  def set_link
    @link = Link.find(params[:id])
  end
end