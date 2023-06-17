class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:email] && params[:password]
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to students_url, notice: "Logged in successfully!"
      else
        redirect_to login_path, notice: "Invalid email or password."
      end
    else
      redirect_to login_path, notice: "Please enter your email and password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out successfully!"
  end
end
