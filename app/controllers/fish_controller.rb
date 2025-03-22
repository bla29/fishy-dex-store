class FishController < ApplicationController
  def index
    @fish = Fish.all

    if @fish
      render json: @fish
    else
      render json: { error: "Fish not found" }, status: :not_found
    end
  end
  def create
    @fish = Fish.new(fish_params)

    if @fish
      render json: @fish
      @fish.save
    else
      render json: { error: "Fish could not be created." }, status: :bad_request
    end
  end

  def destroy
    @fish = Fish.find_by(id: params[:id])

    if @fish
      @fish.destroy
      render json: { message: "User deleted successfully" }, status: :ok
    else
      render json: { error: "Fish not found" }, status: :not_found
    end
  end

  def update
    @fish = Fish.find_by(id: params[:id])

    if @fish.update(fish_params)
      render json: { message: "Fish updated successfully" }, status: :ok
    else
      render json: { error: "Fish could not be updated" }, status: :unprocessable_entity
    end
  end

  private

  def fish_params
    params.require(:fish).permit(:species, :weight, :date)
  end
end
