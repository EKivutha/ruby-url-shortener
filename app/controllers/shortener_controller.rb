class ShortenerController < ApplicationController
  def index
    # @shortener = Shortener.all
  end

  def show
    @shortener = Shortener.find(params[:identifier])
  end

  def new
    @shortener = Shortener.new
  end

  def create
    @shortener = Shortener.new(long: "...")

    if @shortener.save
      redirect_to @shortener
    else
      render :new, status: :unprocessable_entity
    end
  end
end
