module Admin
  class BaseController < ApplicationController
    before_action :authenticate_administrator!

    protected

    def layout_by_resource
      devise_controller? ? 'admin/public' : 'admin/authorized'
    end
  end
end
