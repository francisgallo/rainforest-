class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      if user.name.nil?
        flash[:alert]="add user name to profile"
      end
      redirect_to products_url  #notice: "Logged in!"
    else
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, notice: "Logged out!"
  end
end
