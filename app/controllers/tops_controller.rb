class TopsController < ApplicationController
  def index
    @tasks = Task.all.where(status: 1).limit(5).reverse
  end
end
