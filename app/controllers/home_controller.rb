class HomeController < ApplicationController\

  before_action :authenticate_user!

  def index
    @posts = Post.all
    @user = User.find_by(username: params[:username])

  end
 def method_name

 end
end
