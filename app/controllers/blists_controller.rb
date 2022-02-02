class BlistsController < ApplicationController
  before_action :set_blist, only: [:show, :update, :destroy]

  # GET /blists
  def index
    @blists = Blist.all

    render json: @blists
  end

  # GET /blists/1
  def show
    render json: @blist
  end

  # POST /blists
  def create
    @blist = Blist.new(blist_params)

    if @blist.save
      render json: @blist, status: :created, location: @blist
    else
      render json: @blist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blists/1
  def update
    if @blist.update(blist_params)
      render json: @blist
    else
      render json: @blist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blists/1
  def destroy
    @blist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blist
      @blist = Blist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blist_params
      params.require(:blist).permit(:subject, :details)
    end
end
