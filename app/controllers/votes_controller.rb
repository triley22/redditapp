class VotesController < ApplicationController
  
  def create
    @vote = current_user.build(link_params)

    if !current_user.liked? @link 
          @link.liked_by current_user
        elsif current_user.liked? @link 
          @link.unliked_by current_user
        end
      end
  
  def destroy
    @link.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
end
end