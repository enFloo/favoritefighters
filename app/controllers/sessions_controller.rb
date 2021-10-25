class SessionsController < ApplicationController
  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url, notice: "logged in!"
    else
      flash.now.alert = "Email or passwrod is invalid"
      render "new"
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
