class CommunityController < ApplicationController

  def index
    @outlines = Outline.where.not(user_id: current_user.id)
  end

end
