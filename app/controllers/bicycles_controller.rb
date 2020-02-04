class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show]

  # GET /bicycles
  # GET /bicycles.json
  def index
    @bicycles = Bicycle.all
  end

  # GET /bicycles/1
  # GET /bicycles/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end
end
