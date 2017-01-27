class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :create, :destroy]

  def show
  end
  
  def create
    if !current_user.liked? @vote 
          @vote.liked_by current_user
        elsif current_user.liked? @vote 
          @vote.unliked_by current_user
        end
      end
  
  def destroy
    @vote.destroy
  end
end
