class ApplicationController < ActionController::Base
  layout "blog"

  private
  def admin_user
    redirect_to(root_path) unless current_user && current_user.admin?
  end
end
