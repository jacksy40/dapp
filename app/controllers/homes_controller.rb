class HomesController < ApplicationController
  def index
    member?
  end

  private

  def member?
    @profile = current_user.profile
    if current_user
      if @profile == nil
        redirect_to new_user_profile_path(current_user)
      else
        redirect_to users_path
      end
    end
  end

end
