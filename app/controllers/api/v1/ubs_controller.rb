module Api
  module V1
    class UbsController < ApplicationController
      before_action :set_ubs, only: [:show, :update, :destroy]

      # GET /ubs
      def index
        @ubs = Ubs.all

        render json: @ubs
 
      end

      def find_ubs
        page_number = params[:page].try(:[], :number)
        per_page = params[:page].try(:[], :size)
        
        if params[:query] == nil
          @ubs = Ubs.first(30)
        else
          query = params[:query].to_s.split(',')
          unidade =Ubs.where('lat = ? AND lng = ?', query[0], query[1])

          @ubs = unidade.page(page_number).per(per_page)
        end
             
        render json: @ubs, current_page: page_number, per_page: per_page, total_entries: @ubs.size 
      end

      # GET /ubs/1
      def show
        render json: @ubs
      end

      # POST /ubs
      def create
        @ubs = Ubs.new(ubs_params)

        if @ubs.save
          render json: @ubs, status: :created, location: @ubs
        else
          render json: @ubs.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /ubs/1
      def update
        if @ubs.update(ubs_params)
          render json: @ubs
        else
          render json: @ubs.errors, status: :unprocessable_entity
        end
      end

      # DELETE /ubs/1
      def destroy
        @ubs.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_ub
          @ubs = Ubs.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def ubs_params
          params.require(:ubs).permit(:name, :address, :city, :phone, :lat, :long, :size, :adaptation_for_senior, :medical_equipament, :medicine)
        end
      

    end
  end
end