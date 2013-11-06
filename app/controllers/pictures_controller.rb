class PicturesController < ApplicationController
  def show

  		@picture = Picture.find(params[:id])

  end

  def index

  		@list_of_pictures = Picture.all

  end
end
