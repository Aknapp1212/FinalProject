class DashboardController < ApplicationController
before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

def index
    @university = University.find(current_user.university_id)
    @lectures = current_user.lectures
    @outlines = current_user.outlines
end

end
