class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:sprof, :company]
  before_action :get_profile_student, only: [:sprof]
  before_action :get_profile_company, only: [:company]
  before_action :get_user, only: [:show]

  def show
    if @user.role == 0
      return render "sprof"
    end
    if @user.role == 1 || @user.role == 2
      return render "company"
    end
    return render "sprof"
  end

  def company
    # byebug
    @user = current_user
  end

  def sprof
    @user = current_user
  end

  private

  def get_user
    @user = User.find_by id: params[:id]
  end

  def get_profile_student
    @matching_tasks = MatchingTask.where(user_id: current_user.id)
    @tasks = @matching_tasks.map { |matching_task| matching_task.task }
    @users = @matching_tasks.map { |matching_task| matching_task.user }
  end

  def get_profile_company
    @tasks = current_user.tasks
    @matching_tasks = @tasks.map { |task| task.matching_tasks }
  end
end
