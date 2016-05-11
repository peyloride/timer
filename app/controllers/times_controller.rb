class TimesController < ApplicationController
  unloadable

  before_action :get_project, only: [:index]
  before_action :get_user_id, only: [:show]

  def index
    @times_in_projects = TimeEntry.find_by_sql(["SELECT  user_id, SUM(hours) as sum FROM time_entries WHERE project_id=? GROUP BY user_id", @project.id ])
  end

  def show
    @user_id = get_user_id
    @time_entries_for_user = TimeEntry.where(user_id: get_user_id).group(:user_id, :issue_id).select('user_id, issue_id, sum(hours) as hours')
    #@time_entries_for_user = TimeEntry.where(user_id: get_user_id)
    # @bugs = TimeEntry.find_by_sql(["SELECT * FROM time_entries LEFT OUTER JOIN issues ON time_entries.issue_id = issues.id WHERE time_entries.user_id = ? AND issues.tracker_id = 1", @user_id])
    # @features = TimeEntry.find_by_sql(["SELECT * FROM time_entries LEFT OUTER JOIN issues ON time_entries.issue_id = issues.id WHERE time_entries.user_id = ? AND issues.tracker_id = 2", @user_id])
    # @supports = TimeEntry.find_by_sql(["SELECT * FROM time_entries LEFT OUTER JOIN issues ON time_entries.issue_id = issues.id WHERE time_entries.user_id = ? AND issues.tracker_id = 3", @user_id])

    respond_to do |format|
      format.js
    end
  end


  private

  def get_project
    @project = Project.find_by(identifier: params[:project_id])
  end

  def get_user_id
    params[:user_id]
  end

end
