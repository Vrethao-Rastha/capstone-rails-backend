module Api
  module V1
    class DcrCommentsController < ApplicationController
      def index
        dcr_comments = DcrComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded dcr_comments', data:dcr_comments}, status: :ok;
      end

      def show
        dcr_comments_single = DcrComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded dcr_comments_single', data:dcr_comments_single}, status: :ok;
      end

      def create
        dcr_comments = DcrComment.new(dcr_comments_params)

        if dcr_comments.save
          render json: {status: 'SUCCESS', message:'Created dcr_comments single', data:dcr_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating dcr_comments single', data:dcr_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        dcr_comments = DcrComment.find(params[:id]);
        dcr_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted dcr_comments single', data:dcr_comments}, status: :ok;
      end

      def update
        dcr_comments = DcrComment.find(params[:id])
        if dcr_comments.update_attributes(dcr_comments_params)
          render json: {status: 'SUCCESS', message:'Edited dcr_comments single', data:dcr_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing dcr_comments single', data:dcr_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def dcr_comments_params
        params.permit(:name, :comment, :avatar, :storyId)
      end
    end
  end
end
