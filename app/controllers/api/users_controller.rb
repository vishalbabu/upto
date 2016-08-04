module API
  class UsersController < ApplicationController
    def index
      users = User.all

      render json: users, status: 200
    end

    def show
      user = User.find(params[:id])

      render json: user, status: 200
    end

    def create
      new_user = User.new(user_params)

      if new_user.save
        head 204
      else
        render json: new_user.errors, status: 422
      end
    end

    def update
      updated_user = User.find(params[:id])

      if updated_user.update(user_params)
        render json: updated_user, status: 200
      else
        render json: updated_user.errors, status: 422
      end
    end

    def destroy
      User.find_active_user(params[:id]).archive

      head 204
    end

    private

    def user_params
      params.require(:user).permit(:name, :email)
    end
  end
end
