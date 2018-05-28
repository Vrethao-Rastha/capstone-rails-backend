module Api
  module V1
    class BlogsController < ApplicationController
      def index
        blogs = Blogs.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded blogs', data:blogs}, status: :ok;
      end

      def show
        blogs_single = Blogs.find(params[:id]);
        render json: {status: 'SUCCESS', message:'Loaded blogs_single', data:blogs_single}, status: :ok;
      end

      def create
        blogs = Blogs.new(blogs_params)

        if blogs.save
          render json: {status: 'SUCCESS', message:'Created blogs single', data:blogs}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error creating blogs single', data:blogs.errors}, status: :unprocessable_entity;
        end
      end

      def destroy
        blogs = Blogs.find(params[:id]);
        blogs.destroy
        render json: {status: 'SUCCESS', message:'Deleted blogs single', data:blogs}, status: :ok;
      end

      def update
        blogs = Blogs.find(params[:id])
        if blogs.update_attributes(blogs_params)
          render json: {status: 'SUCCESS', message:'Edited blogs single', data:blogs}, status: :ok;
        else
          render json: {status: 'ERROR', message:'Error editing blogs single', data:blogs.errors}, status: :unprocessable_entity;
        end
      end


      private

      def blogs_params
        params.permit(:title, :body, :picture)
      end
    end
  end
end
