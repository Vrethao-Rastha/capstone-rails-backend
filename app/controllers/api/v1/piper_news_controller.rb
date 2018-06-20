module Api
  module V1
    class PiperNewsController < ApplicationController
      def index
        piper = PiperNews.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded piper', data:piper}, status: :ok;
      end

      def show
        piper_single = PiperNews.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded piper_single', data:piper_single}, status: :ok;
      end

      def create
        piper = PiperNews.new(piper_params)

        if piper.save
          render json: {status: 'SUCCESS', message:'Created piper single', data:piper}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating piper single', data:piper.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        piper = PiperNews.find(params[:id]);
        piper.destroy
        render json: {status: 'SUCCESS', message:'Deleted piper single', data:piper}, status: :ok;
      end

      def update
        piper = PiperNews.find(params[:id])
        if piper.update_attributes(piper_params)
          render json: {status: 'SUCCESS', message:'Edited piper single', data:piper}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing piper single', data:piper.errors}, status: :unprocessable_entity;
        end
      end


      private

      def piper_params
        params.permit(:question, :answer, :picture)
      end
    end
  end
end
