class Admin::ApplicationController < ActionController::Base
 include Clearance::Controller
  before_action :require_login

  before_filter :permitted_roles!
  layout 'admin/layouts/admin'

  def permitted_roles!
    if current_user && current_user.admin
     return true
    else
      redirect_to root_url
    end
  end

  def permitted_admin_roles!
    if !current_user 
      redirect_to admin_dashboard_path
    end
  end 
end
