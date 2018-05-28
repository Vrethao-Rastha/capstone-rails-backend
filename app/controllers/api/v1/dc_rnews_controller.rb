module Api
  module V1
    class DcRnewsController < ApplicationController
      def index
        dcr = DcRnews.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded dcr', data:dcr}, status: :ok;
      end

      def show
        dcr_single = DcRnews.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded dcr_single', data:dcr_single}, status: :ok;
      end

      def create
        dcr = DcRnews.new(dcr_params)

        if dcr.save
          render json: {status: 'SUCCESS', message:'Created dcr single', data:dcr}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating dcr single', data:dcr.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        dcr = DcRnews.find(params[:id]);
        dcr.destroy
        render json: {status: 'SUCCESS', message:'Deleted dcr single', data:dcr}, status: :ok;
      end

      def update
        dcr = DcRnews.find(params[:id])
        if dcr.update_attributes(dcr_params)
          render json: {status: 'SUCCESS', message:'Edited dcr single', data:dcr}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing dcr single', data:dcr.errors}, status: :unprocessable_entity;
        end
      end


      private

      def dcr_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
