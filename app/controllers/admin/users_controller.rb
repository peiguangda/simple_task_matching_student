class Admin::UsersController < ApplicationController
  def index
    @users = User.all.limit(5).reverse
  end
end
