# class VotesController < ApplicationController
  
#   def show
#   end

#   def destroy
#     @vote.destroy
#     respond_to do |format|
#       format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
# end


# def vote
#   @link = Link.find(params[:id])
#   if request.post?
#     @link.upvote_by current_user
#   elsif request.delete?
#     @link.downvote_by current_user
# end
#   respond_to do |format|
#     format.html { redirect_to :back }
#     format.js 
#   end
# end
# end