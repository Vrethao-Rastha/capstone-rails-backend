module Api
  module V1
    class PublikNewsController < ApplicationController
      def index
        publik = PublikNews.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded publik', data:publik}, status: :ok;
      end

      def show
        publik_single = PublikNews.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded publik_single', data:publik_single}, status: :ok;
      end

      def create
        publik = PublikNews.new(publik_params)

        if publik.save
          render json: {status: 'SUCCESS', message:'Created publik single', data:publik}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating publik single', data:publik.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        publik = PublikNews.find(params[:id]);
        publik.destroy
        render json: {status: 'SUCCESS', message:'Deleted publik single', data:publik}, status: :ok;
      end

      def update
        publik = PublikNews.find(params[:id])
        if publik.update_attributes(publik_params)
          render json: {status: 'SUCCESS', message:'Edited publik single', data:publik}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing publik single', data:publik.errors}, status: :unprocessable_entity;
        end
      end


      private

      def publik_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
