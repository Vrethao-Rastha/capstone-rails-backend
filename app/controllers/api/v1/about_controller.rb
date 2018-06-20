module Api
  module V1
    class AboutController < ApplicationController
      def index
        about = About.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded about', data:about}, status: :ok;
      end

      def show
        about_single = About.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded about_single', data:about_single}, status: :ok;
      end

      def create
        about = About.new(about_params)

        if about.save
          render json: {status: 'SUCCESS', message:'Created about single', data:about}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating about single', data:about.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        about = About.find(params[:id]);
        about.destroy
        render json: {status: 'SUCCESS', message:'Deleted about single', data:about}, status: :ok;
      end

      def update
        about = About.find(params[:id])
        if about.update_attributes(about_params)
          render json: {status: 'SUCCESS', message:'Edited about single', data:about}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing about single', data:about.errors}, status: :unprocessable_entity;
        end
      end


      private

      def about_params
        params.permit(:about, :user)
      end
    end
  end
end
