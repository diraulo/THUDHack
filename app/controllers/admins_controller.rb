class AdminsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin' # , :only => [:action, :action], :except => [:action, :action]

  def user_profile
    @current_user = current_user

    if params[:id] == 'me'
      @user = @current_user
    else
      @user = User.find_by_id(params[:id])
    end
  end

  def timeline
    @current_user = current_user
  end

  def user_settings
    @user = @current_user = current_user
  end
end
