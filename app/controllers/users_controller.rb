class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            render json: { message: 'User deleted successfully' }, status: :ok
        else 
            render json: { message: 'Failed to delete user' }, status: :unprocessable_entity
        end
    end
end
