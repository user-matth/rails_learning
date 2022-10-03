class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  def layout_by_resource
      @url = request.original_fullpath
      if devise_controller? and @url == '/users/sign_in' 
        'layouts/login'
      elsif devise_controller?
        'layouts/admin/application'
      else
        'layouts/admin/application'
      end
  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:permission_id])
    end
end
