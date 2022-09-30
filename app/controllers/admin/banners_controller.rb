class Admin::BannersController < ApplicationController
  before_action :set_banner, only: %i[ show edit update destroy ]

  # GET /banners
  def index
    @banners = Banner.all
  end

  # GET /banners/1
  def show
  end

  # GET /banners/new
  def new
    @banner = Banner.new
  end

  # GET /banners/1/edit
  def edit
  end

  # POST /banners
  def create
    @banner = Banner.new(banner_params)

    if @banner.save
      redirect_to [:admin, @banner], notice: "Banner was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /banners/1
  def update
    if @banner.update(banner_params)
      redirect_to [:admin, @banner], notice: "Banner was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /banners/1
  def destroy
    @banner.destroy
    redirect_to admin_banners_url, notice: "Banner was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner
      @banner = Banner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banner_params
      params.require(:banner).permit(:active, :order, :name, :background, :summary, :button_name, :button_color_txt, :button_color_active, :button_color_hover, :button_link, :image)
    end
end
