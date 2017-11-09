class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'hubby/public'

  before_action :set_locale

  protected

  def set_locale
    I18n.locale = I18n.default_locale
  end
end
