class TasksController < ApplicationController
  before_action :get_task, only: [:show]

  def index
    @search_text = "【"
    @tasks = Task.all.where(status: 1)
    if task_params[:field] != "分野"
      @tasks = @tasks.where("field LIKE ?", "%#{task_params[:field]}%")
      @search_text += "分野が" + task_params[:field] + " や "
    end

    if task_params[:area] != "エリア"
      @tasks = @tasks.where("area LIKE ?", "%#{task_params[:area]}%")
      @search_text += "エリカが" + task_params[:area] + " や "
    end

    if task_params[:salary] != "賃金"
      sala = task_params[:salary].scan(/\d/).join('').to_i
      @tasks = @tasks.where("content LIKE ?", "%#{task_params[:free_text]}%")
                   .where("salary <?", sala)
                   .order('salary DESC, salary DESC')
      @search_text += "賃金<" + sala.to_s + " や "
    end
    @search_text = @search_text[0..@search_text.length - 4]
    @search_text += "】"
    # .where(veteran: true?(task_params[:veteran]))

  end

  def show
    @company = User.find_by id: @task.user_id
    @matching_task = nil
    @matching_task = MatchingTask.find_by task_id: params[:id], user_id: current_user.id if user_signed_in?
    return unless @company
  end

  private

  def get_task
    @task = Task.find_by id: params[:id]
    return unless @task
  end

  def task_params
    params.require(:task).permit :name, :content, :field, :area, :salary,
                                 :registration_deadline, :task_deadline, :veteran, :descript_url, :money_unit, :free_text
  end

  def true?(obj)
    obj.to_s.downcase == "true"
  end
end
