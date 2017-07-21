class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park)
  end

  def update
    @park = Park.update!(park_params)
    json_response(@park)
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

private

  def park_params
    params.permit(:name, :city, :state, :category)
  end

end
