class Api::V1::DirectionsController < ApplicationController
  before_action :find_direction, only: [:show, :update, :destroy]

  # GET api/v1/directions/:id
  def show
    render json: DirectionSerializer.new(@direction).serialized_json
  end

  # POST api/v1/directions
  def create
    direction = Direction.new(direction_params)

    if direction.save
      render json: DirectionSerializer.new(direction).serialized_json
    else
      render error: { error: "Unable to create direction." }, status: 400
    end
  end

  # PUT api/v1/directions/:id
  def update
    if @direction
      @direction.update(direction_params)
      render json: { message: "Direction succesfully updated." }, status: 200
    else
      render json: { error: "Unable to update direciton." }, status: 400
    end
  end

  # DELETE api/v1/directions/:id
  def destroy
    if @direction
      @direction.destroy
      render json: { message: "Direction succesfully deleted." }, status: 200
    else
      render json: { error: "Unable to delete direction." }, status: 400
    end
  end

  private

  def direction_params
    params.require(:direction).permit(:direction_text)
  end

  def find_direction
    @direction = Direction.find_by!(id: params[:id])
  end
end
