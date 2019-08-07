class TopsController < ApplicationController
  def index
    @tasks = Task.all.limit(5).reverse
  end
end
