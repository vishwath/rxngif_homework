class PicturesController < ApplicationController
  def show

  		@picture = Picture.find(params[:id])

  end

  def index

  		@list_of_pictures = Picture.all
  	end

  def create

  @p = Picture.new
  @p.source = params[:source]
  @p.caption = params[:caption]
  @p.save

  end

  def destroy

  	@picture_delete = Picture.find(params[:id])
  	@picture_delete.destroy
  	

  end
end
