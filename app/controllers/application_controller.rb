class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :set_current_user

  def set_current_user
    @current_user ||= Usuario.find(cookies[:user_id]) unless cookies[:user_id].blank?
  end
end
