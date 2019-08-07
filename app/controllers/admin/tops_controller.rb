class Admin::TopsController < ApplicationController
  def index
    @tasks = Task.all.where(status: false).limit(8)
  end
end
