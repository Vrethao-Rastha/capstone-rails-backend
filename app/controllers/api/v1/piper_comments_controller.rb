module Api
  module V1
    class PiperCommentsController < ApplicationController
      def index
        piper_comments = PiperComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded piper_comments', data:piper_comments}, status: :ok;
      end

      def show
        piper_comments_single = PiperComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded piper_comments_single', data:piper_comments_single}, status: :ok;
      end

      def create
        piper_comments = PiperComment.new(piper_comments_params)

        if piper_comments.save
          render json: {status: 'SUCCESS', message:'Created piper_comments single', data:piper_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating piper_comments single', data:piper_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        piper_comments = PiperComment.find(params[:id]);
        piper_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted piper_comments single', data:piper_comments}, status: :ok;
      end

      def update
        piper_comments = PiperComment.find(params[:id])
        if piper_comments.update_attributes(piper_comments_params)
          render json: {status: 'SUCCESS', message:'Edited piper_comments single', data:piper_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing piper_comments single', data:piper_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def piper_comments_params
        params.permit(:name, :comment, :avatar, :storyId)
      end
    end
  end
end
