class HeyasController < ApplicationController
  before_action :set_heya, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @heyas = Heya.all
    begin
      respond_with(@heyas)
    rescue ActiveRecord::RecordNotFound
      puts "!!no record!!"
    end
  end

  def show
    respond_with(@heya)
  end

  def new
    return if user_signed_in?
    @heya = Heya.new
    respond_with(@heya)
  end

  def edit
  end

  def create
    @heya = Heya.new(heya_params)
    @heya.save
    respond_with(@heya)
  end

  def update
    @heya.update(heya_params)
    respond_with(@heya)
  end

  def destroy
    @heya.destroy
    respond_with(@heya)
  end

  private
    def set_heya
      @heya = Heya.find(params[:id])
    end

    def heya_params
      params.require(:heya).permit(:ondo, :shitudo)
    end
end
