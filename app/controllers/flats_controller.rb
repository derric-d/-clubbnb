class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :destroy, :update]

  def index
    # @flats = Flat.all
      @flats = policy_scope(Flat).order(created_at: :desc).where.not(latitude: nil, longitude: nil)
    if params[:query].present?

      # @flats = @flats.where(address: params[:query])
      sql_query = " \
        flats.title @@ :query \
        OR flats.address @@ :query \
        OR flats.city @@ :query \
        "
      # sql_query = "title ILIKE :query OR address ILIKE :query"
      @flats = @flats.where(sql_query, query: "%#{params[:query]}%")
    end
    # authorize @flats
    # @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { flat: flat }),
        image_url: helpers.asset_url('https://i.ibb.co/wcBGNNd/Marker.png')
      }
    end
  end

  def show
    authorize @flat
    @stars_avg = compute_stars_avg
  end

  def new
    @flat = Flat.new
    @user = current_user
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    authorize @flat

    @flat.user = current_user

    if @flat.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    authorize @flat
  end

  def update
    authorize @flat
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat has been successfully updated'
    else
      render :edit
    end
  end

  def destroy
    authorize @flat
    @flat.destroy
    redirect_to dashboard_path, notice: 'flat was successfully deleted.'
  end

  private

  def compute_stars_avg
    stars = []
    @flat.reviews.each do |review|
      stars << review.stars
    end
    stars_sum = stars.reduce(0) { |sum, num| sum + num }
    stars_sum.to_f / stars.count
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :title, :city, :description, :price_per_night, :photo, :photo_cache)
  end
end
