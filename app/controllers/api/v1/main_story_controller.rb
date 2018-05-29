module Api
  module V1
    class MainStoryController < ApplicationController
      def index
        main_story = MainStory.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded main_story', data:main_story}, status: :ok;
      end

      def show
        main_story_single = MainStory.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded main_story_single', data:main_story_single}, status: :ok;
      end

      def create
        main_story = MainStory.new(main_story_params)

        if main_story.save
          render json: {status: 'SUCCESS', message:'Created main_story single', data:main_story}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating main_story single', data:main_story.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        main_story = MainStory.find(params[:id]);
        main_story.destroy
        render json: {status: 'SUCCESS', message:'Deleted main_story single', data:main_story}, status: :ok;
      end

      def update
        main_story = MainStory.find(params[:id])
        if main_story.update_attributes(main_story_params)
          render json: {status: 'SUCCESS', message:'Edited main_story single', data:main_story}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing main_story single', data:main_story.errors}, status: :unprocessable_entity;
        end
      end


      private

      def main_story_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
