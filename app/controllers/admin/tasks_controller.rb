class Admin::TasksController < ApplicationController
  before_action :get_task, only: [:update]
  before_action :authenticate_user!, only: [:update]

  def update
    if true?(params[:is_approved])
      @task.update status: 1 #承認
    else
      @task.update status: 2 #非承認
    end
    redirect_to admin_path
  end

  private

  def true?(obj)
    obj.to_s.downcase == "true"
  end

  def get_task
    @task = Task.find_by id: params[:id]
    return unless @task
  end

  def task_params
    params.require(:task).permit :name, :content, :field, :area, :salary,
                                 :registration_deadline, :task_deadline, :veteran, :descript_url, :money_unit, status
  end
end
