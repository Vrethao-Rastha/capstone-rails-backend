module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded users', data:users}, status: :ok;
      end

      def show
        users_single = User.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded users_single', data:users_single}, status: :ok;
      end

      def create
        users = User.new(users_params)

        if users.save
          render json: {status: 'SUCCESS', message:'Created users single', data:users}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating users single', data:users.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        users = User.find(params[:id]);
        users.destroy
        render json: {status: 'SUCCESS', message:'Deleted users single', data:users}, status: :ok;
      end

      def update
        users = User.find(params[:id])
        if users.update_attributes(users_params)
          render json: {status: 'SUCCESS', message:'Edited users single', data:users}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing users single', data:users.errors}, status: :unprocessable_entity;
        end
      end


      private

      def users_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
