module Api
  module V1
    class PostCommentsController < ApplicationController
      def index
        post_comments = PostComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded post_comments', data:post_comments}, status: :ok;
      end

      def show
        post_comments_single = PostComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded post_comments_single', data:post_comments_single}, status: :ok;
      end

      def create
        post_comments = PostComment.new(post_comments_params)

        if post_comments.save
          render json: {status: 'SUCCESS', message:'Created post_comments single', data:post_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating post_comments single', data:post_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        post_comments = PostComment.find(params[:id]);
        post_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted post_comments single', data:post_comments}, status: :ok;
      end

      def update
        post_comments = PostComment.find(params[:id])
        if post_comments.update_attributes(post_comments_params)
          render json: {status: 'SUCCESS', message:'Edited post_comments single', data:post_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing post_comments single', data:post_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def post_comments_params
        params.permit(:name, :comment, :avatar, :commentId)
      end
    end
  end
end
