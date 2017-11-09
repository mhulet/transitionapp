class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource

  before_action :set_locale

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :administrator
      'admin/public'
    elsif devise_controller? && resource_name == :user
      'user/public'
    else
      'application'
    end
  end

  def set_locale
    I18n.locale = I18n.default_locale
  end
end
