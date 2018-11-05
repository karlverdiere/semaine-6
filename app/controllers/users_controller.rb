class UsersController < ApplicationController
  def deco
     session[:user] = nil
     redirect_to '/users/deconnection'
   end
   def deconnection

   end

   def new
     @users = User.new
   end

   def create
     @user_params = params[:user]
     puts @user_params
     User.create(name: @user_params[:name],nom:@user_params[:nom], email: @user_params[:email], password_digest: BCrypt::Password.create(@user_params[:password_digest]))
     redirect_to '/sessions/login'
   end

   def index
     @all_user = User.all
   end





   def check
     puts @current_user
     @current_user = User.where(name: params[:name], email: params[:email], password_digest: params[:password_digest])
     if @current_user.where(name: params[:name], email: params[:email], password_digest: params[:password_digest]).exists?
       puts "Welcome back bro"
       flash[:info] = "Bienvenue #{@current_user} !"
       session[:user] = @current_user
       redirect_to "/users/home"
     else
       puts " Only members here, get out or register now ! "
       redirect_to "/users/home"
     end
   end
end
