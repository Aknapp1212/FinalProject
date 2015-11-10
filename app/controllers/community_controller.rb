class CommunityController < ApplicationController

  def index
    @outlines = Outline.all
  end
end
