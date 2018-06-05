module Api
  module V1
    class ScrollerController < ApplicationController
      def index
        scroller = Scroller.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded scroller', data:scroller}, status: :ok;
      end

      def show
        scroller_single = Scroller.find(params[:id]);
      render json: {status: 'SUCCESS', message:'Loaded scroller_single', data:scroller_single}, status: :ok;
      end
    end
  end
end
