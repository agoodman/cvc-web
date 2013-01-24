class VotesController < ApplicationController
  
  before_filter :authenticate_user!, only: [ :claim ]

  def create
    @vote = Vote.new(params[:vote])
    @vote.save
    redirect_to new_user_registration_path(vote_id: @vote.id)
  end
  
  def new
  end
  
  def claim
    @vote = Vote.find(params[:id])
    @vote.user_id = current_user.id
    @vote.save
    redirect_to root_path
  end
  
end
