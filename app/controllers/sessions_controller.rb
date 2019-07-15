class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: params[:session][:user_id])
    if user
      log_in user
      redirect_to user
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid user id'
      render 'new'
    end
  end

  def destroy
  end
end
