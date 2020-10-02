class CommunitiesController < ApplicationController
  def show
    @communities = Community.find()
  end
end
