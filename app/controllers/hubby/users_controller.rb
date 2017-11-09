module Hubby
  class UsersController < Hubby::BaseController
    def index
      @users = current_hub.users.all
    end

    def new
      @user = current_hub.users.new
    end

    def create
      @user = current_hub.users.new(user_params)
      if @user.save
        redirect_to(
          hubby_users_path,
          notice: "L'accès du membre a été créé."
        )
      else
        render :new
      end
    end

    def edit
      @user = current_hub.users.find(params[:id])
    end

    def update
      @user = current_hub.users.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to(
          hubby_users_path,
          notice: "L'accès du membre a été mis à jour."
        )
      else
        render :edit
      end
    end

    def destroy
      @user = current_hub.users.find(params[:id])
      if @user.destroy
        redirect_to(
          hubby_users_path,
          notice: "L'accès du membre a été supprimé."
        )
      else
        redirect_to(
          hubby_users_path,
          alert: "L'accès du membre n'a pas pu être supprimé."
        )
      end
    end

    private

    def user_params
      params.require(:user).permit(
        :email,
        :password,
        :password_confirmation
      )
    end
  end
end
