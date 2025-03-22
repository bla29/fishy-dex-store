class FishController < ApplicationController
  def index
    @fish = Fish.all

    if @fish
      render json: @fish
    else
      render json: { error: "Fish not found" }, status: 404
    end
  end
end
