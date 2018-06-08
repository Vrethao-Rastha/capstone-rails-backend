module Api
  module V1
    class MainStoryCommentsController < ApplicationController
      def index
        main_story_comments = MainStoryComment.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded main_story_comments', data:main_story_comments}, status: :ok;
      end

      def show
        main_story_comments_single = MainStoryComment.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded main_story_comments_single', data:main_story_comments_single}, status: :ok;
      end

      def create
        main_story_comments = MainStoryComment.new(main_story_comments_params)

        if main_story_comments.save
          render json: {status: 'SUCCESS', message:'Created main_story_comments single', data:main_story_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating main_story_comments single', data:main_story_comments.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        main_story_comments = MainStoryComment.find(params[:id]);
        main_story_comments.destroy
        render json: {status: 'SUCCESS', message:'Deleted main_story_comments single', data:main_story_comments}, status: :ok;
      end

      def update
        main_story_comments = MainStoryComment.find(params[:id])
        if main_story_comments.update_attributes(main_story_comments_params)
          render json: {status: 'SUCCESS', message:'Edited main_story_comments single', data:main_story_comments}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing main_story_comments single', data:main_story_comments.errors}, status: :unprocessable_entity;
        end
      end


      private

      def main_story_comments_params
        params.permit(:name, :comment, :avatar, :storyId)
      end
    end
  end
end
