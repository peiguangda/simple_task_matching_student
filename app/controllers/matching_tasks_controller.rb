class MatchingTasksController < ApplicationController
  before_action :authenticate_user!

  def create
    matching_task = current_user.matching_tasks.build task_id: params[:task_id], status: 0
    if matching_task.save
      # redirect to profile
      redirect_to users_student_path
    end
  end
end
