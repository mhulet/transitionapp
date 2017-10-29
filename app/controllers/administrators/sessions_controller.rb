class Administrators::SessionsController < Devise::SessionsController
  layout 'admin/public'

  protected

  def after_sign_out_path_for(resource)
    admin_root_path
  end
end
