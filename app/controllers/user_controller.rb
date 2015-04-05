class UserController < ApplicationController

  def index
    users = User.all
    respond_to do |format|
      format.json { render :json => users}
    end
  end

  def new
    render :signup
  end



end

