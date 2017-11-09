module Admin
  class HubsController < Admin::BaseController
    def index
      @hubs = Hub.all
    end

    def new
      @hub = Hub.new
    end

    def create
      @hub = Hub.new(hub_params)
      if @hub.save
        redirect_to(
          admin_hubs_path,
          notice: "L'initiative a été créée."
        )
      else
        render :new
      end
    end

    def edit
      @hub = Hub.find(params[:id])
    end

    def update
      @hub = Hub.find(params[:id])
      if @hub.update_attributes(hub_params)
        redirect_to(
          admin_hubs_path,
          notice: "L'initiative a été mise à jour."
        )
      else
        render :edit
      end
    end

    def destroy
      @hub = Hub.find(params[:id])
      if @hub.destroy
        redirect_to(
          admin_hubs_path,
          notice: "L'initiative a été supprimée."
        )
      else
        redirect_to(
          admin_hubs_path,
          alert: "L'initiative n'a pas été supprimée."
        )
      end
    end

    private

    def hub_params
      params.require(:hub).permit(
        :name
      )
    end
  end
end
