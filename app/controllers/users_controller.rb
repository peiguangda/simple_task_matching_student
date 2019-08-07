class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :sprof]
  before_action :get_profile, only: [:show, :sprof]

  def show
  end

  def sprof
  end

  def get_profile
    @matching_tasks = MatchingTask.where(user_id: current_user.id)
    @tasks = @matching_tasks.map { |matching_task| matching_task.task }
  end
end
