module Api
  module V1
    class HeadlinesController < ApplicationController
      def index
        headlines = Headlines.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded headlines', data:headlines}, status: :ok;
      end

      def show
        headlines_single = Headlines.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded headlines_single', data:headlines_single}, status: :ok;
      end

      def create
        headlines = Headlines.new(headlines_params)

        if headlines.save
          render json: {status: 'SUCCESS', message:'Created headlines single', data:headlines}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating headlines single', data:headlines.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        headlines = Headlines.find(params[:id]);
        headlines.destroy
        render json: {status: 'SUCCESS', message:'Deleted headlines single', data:headlines}, status: :ok;
      end

      def update
        headlines = Headlines.find(params[:id])
        if headlines.update_attributes(headlines_params)
          render json: {status: 'SUCCESS', message:'Edited headlines single', data:headlines}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing headlines single', data:headlines.errors}, status: :unprocessable_entity;
        end
      end


      private

      def headlines_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
