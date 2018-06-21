module Api
  module V1
    class MainPostCommentsController < ApplicationController
      def index
        main_post_comments = MainPostComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded main_post_comments', data:main_post_comments}, status: :ok;
      end

      def show
        main_post_comments_single = MainPostComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded main_post_comments_single', data:main_post_comments_single}, status: :ok;
      end

      def create
        main_post_comments = MainPostComment.new(main_post_comments_params)

        if main_post_comments.save
          render json: {status: 'SUCCESS', message:'Created main_post_comments single', data:main_post_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating main_post_comments single', data:main_post_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        main_post_comments = MainPostComment.find(params[:id]);
        main_post_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted main_post_comments single', data:main_post_comments}, status: :ok;
      end

      def update
        main_post_comments = MainPostComment.find(params[:id])
        if main_post_comments.update_attributes(main_post_comments_params)
          render json: {status: 'SUCCESS', message:'Edited main_post_comments single', data:main_post_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing main_post_comments single', data:main_post_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def main_post_comments_params
        params.permit(:name, :comment, :avatar, :postId, :storyId)
      end
    end
  end
end
