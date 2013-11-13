class PicturesController < ApplicationController
  def show
  @picture = Picture.find(params[:id])
  end

  def index
  @list_of_pictures = Picture.all
  end

  def new
end

def create
  p = Picture.new
  p.source = params[:source]
  p.caption = params[:caption]
  p.save
  
  redirect_to pictures_url, :notice => "You have created a new picture" 
end

def update
  p = Picture.find(params[:id])
  p.source = params[:source]
  p.caption = params[:caption]
  p.save
  redirect_to picture_url(p.id), :notice => "You have updated the picture"
end

def edit
  @picture = Picture.find(params[:id])

end

  def destroy
  p = Picture.find(params[:id])
  p.destroy
  redirect_to pictures_url, :notice => "You have deleted the picture"
 
  end
end
