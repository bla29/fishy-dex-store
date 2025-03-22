class FishController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  # validates :species, :weight, :picture, presence: true
  def index
    @fish = Fish.all

    if @fish
      render json: @fish
    else
      render json: { error: "Fish not found" }, status: 404
    end
  end
  def create
    @fish = Fish.new(fish_params)

    if @fish
      render json: @fish
      @fish.save
    else
      render json: { error: "Fish could not be created." }, status: 422
    end
  end


  private

  def fish_params
    params.require(:fish).permit(:species, :weight, :date)
  end
end
