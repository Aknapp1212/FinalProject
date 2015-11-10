class CommunityController < ApplicationController

  def index
    @outlines = Outline.where.not(id: current_user.id)
  end
end
