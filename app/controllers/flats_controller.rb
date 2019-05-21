class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :destroy]

  def index
    @flats = Flat.all


  end

  def show
  end

  def new
    @flat = Flat.new
    @user = current_user

  end

  def create
    @flat = Flat.new(flat_params)

    @flat.user = current_user

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat has been successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to root_path, notice: 'flat was successfully deleted.'
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :title, :description, :price_per_night, :picture)
  end
end
p
