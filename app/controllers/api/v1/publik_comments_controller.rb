module Api
  module V1
    class PublikCommentsController < ApplicationController
      def index
        publik_comments = PublikComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded publik_comments', data:publik_comments}, status: :ok;
      end

      def show
        publik_comments_single = PublikComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded publik_comments_single', data:publik_comments_single}, status: :ok;
      end

      def create
        publik_comments = PublikComment.new(publik_comments_params)

        if publik_comments.save
          render json: {status: 'SUCCESS', message:'Created publik_comments single', data:publik_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating publik_comments single', data:publik_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        publik_comments = PublikComment.find(params[:id]);
        publik_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted publik_comments single', data:publik_comments}, status: :ok;
      end

      def update
        publik_comments = PublikComment.find(params[:id])
        if publik_comments.update_attributes(publik_comments_params)
          render json: {status: 'SUCCESS', message:'Edited publik_comments single', data:publik_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing publik_comments single', data:publik_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def publik_comments_params
        params.permit(:name, :comment, :avatar, :storyId)
      end
    end
  end
end
