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

  redirect_to "http://localhost:3000/all_pictures", :notice => "Your picture has been created"

  end

  def edit

  @p_edited = Picture.find(params[:id])

  end

def update

  @p_update = Picture.find(params[:id])
  @p_update.source = params[:source]
  @p_update.caption = params[:caption]
  @p_update.save

  end


  def destroy

  	@picture_delete = Picture.find(params[:id])
  	@picture_delete.destroy
    
    redirect_to "http://localhost:3000/all_pictures", :notice => "Your picture has been deleted"
  	

  end
end
