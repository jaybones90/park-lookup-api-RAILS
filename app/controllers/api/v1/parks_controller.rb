module Api::V1

  class ParksController < ApplicationController

    def index
      @parks = Park.all
      name = params[:name]
      @parks = Park.search(name)
      json_response(@parks)
    end

    def random
      @park = Park.all.shuffle.sample
      json_response(@park)
    end

    def show
      @park = Park.find(params[:id])
      json_response(@park)
    end

    def create
      @park = Park.create!(park_params)
      json_response(@park, :created)
    end

    def update
      @park = Park.find(params[:id])
      @park.update!(park_params)
      if @park.update!(park_params)
        render status: 200, json: { park: @park,
                                    message: "Park has been sucessfully updated"}
      end
    end

    def destroy
      @park = Park.find(params[:id])
      @park.destroy
      if @park.destroy
        render status: 200, json: { message: "Park was successfully deleted"}
      end
    end

  private

    def park_params
      params.permit(:name, :city, :state, :category)
    end

  end

end
