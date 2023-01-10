class SneakersController < ApplicationController
  before_action :set_sneaker, only: %i[ show edit update destroy ]

  # GET /sneakers
  def index
    @sneakers = Sneaker.all
  end

  # GET /sneakers/1
  def show
  end

  # GET /sneakers/new
  def new
    @sneaker = Sneaker.new
  end

  # GET /sneakers/1/edit
  def edit
  end

  # POST /sneakers
  def create
    @sneaker = Sneaker.new(sneaker_params)

    if @sneaker.save
      redirect_to @sneaker, notice: "Sneaker was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sneakers/1
  def update
    if @sneaker.update(sneaker_params)
      redirect_to @sneaker, notice: "Sneaker was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /sneakers/1
  def destroy
    @sneaker.destroy
    redirect_to sneakers_url, notice: "Sneaker was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sneaker
      @sneaker = Sneaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sneaker_params
      params.require(:sneaker).permit(:name, :brand, :description, :price, :image)
    end
end
