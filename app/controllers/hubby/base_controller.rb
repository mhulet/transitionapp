module Hubby
  class BaseController < ApplicationController
    before_action :authenticate_user!

    layout :layout_by_resource

    def current_hub
      current_user.hub
    end
    helper_method :current_hub

    protected

    def layout_by_resource
      devise_controller? ? 'hubby/public' : 'hubby/authorized'
    end
  end
end
