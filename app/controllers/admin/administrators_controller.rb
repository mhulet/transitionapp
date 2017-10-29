module Admin
  class AdministratorsController < Admin::BaseController
    def index
      @administrators = Administrator.all
    end

    def new
      @administrator = Administrator.new
    end

    def create
      @administrator = Administrator.new(administrator_params)
      if @administrator.invite!
        redirect_to(
          admin_administrators_path,
          notice: "L'administrateur a été ajouté."
        )
      else
        render :new
      end
    end

    def edit
      @administrator = Administrator.find(params[:id])
    end

    def update
      @administrator = Administrator.find(params[:id])
      if @administrator.update_attributes(administrator_params)
        redirect_to(
          admin_administrators_path,
          notice: "L'administrateur a été mis à jour."
        )
      else
        render :edit
      end
    end

    def destroy
      @administrator = Administrator.find(params[:id])
      if @administrator.destroy
        redirect_to(
          admin_administrators_path,
          notice: "L'administrateur a été supprimé."
        )
      else
        redirect_to(
          admin_administrators_path,
          alert: "L'administrateur n'a pas été supprimé."
        )
      end
    end

    private

    def administrator_params
      params.require(:administrator).permit(
        :email
      )
    end
  end
end
