class VotesController < ApplicationController
  
  before_filter :authenticate_user!, only: [ :claim ]

  def create
    @vote = Vote.new(params[:vote])
    @vote.save
    redirect_to new_user_registration_path(vote_id: @vote.id)
  end
  
  def new
    @chicken_votes = Vote.valid.chicken.count
    @cobra_votes = Vote.valid.cobra.count
    @total_votes = Vote.valid.count
    @chicken_perc = 100.0 * @chicken_votes.to_f / @total_votes.to_f rescue 0
    @cobra_perc = 100.0 * @cobra_votes.to_f / @total_votes.to_f rescue 0
  end
  
  def claim
    @vote = Vote.find(params[:id])
    @vote.user_id = current_user.id
    @vote.save
    redirect_to root_path
  end
  
end
