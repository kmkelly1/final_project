class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all

    render("artworks/index.html.erb")
  end

  def show
    @artwork = Artwork.find(params[:id])
    
    @engagement = Engagement.new
    @engagement.save

    render("artworks/show.html.erb")
  end

  def new
    @artwork = Artwork.new

    render("artworks/new.html.erb")
  end

  def create
    @artwork = Artwork.new

    @artwork.title = params[:title]
    @artwork.date = params[:date]
    @artwork.artist_id = params[:artist_id]
    @artwork.medium = params[:medium]

    save_status = @artwork.save

    if save_status == true
      redirect_to("/artworks/#{@artwork.id}", :notice => "Artwork created successfully.")
    else
      render("artworks/new.html.erb")
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])

    render("artworks/edit.html.erb")
  end

  def update
    @artwork = Artwork.find(params[:id])

    @artwork.title = params[:title]
    @artwork.date = params[:date]
    @artwork.artist_id = params[:artist_id]
    @artwork.medium = params[:medium]

    save_status = @artwork.save

    if save_status == true
      redirect_to("/artworks/#{@artwork.id}", :notice => "Artwork updated successfully.")
    else
      render("artworks/edit.html.erb")
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])

    @artwork.destroy

    if URI(request.referer).path == "/artworks/#{@artwork.id}"
      redirect_to("/", :notice => "Artwork deleted.")
    else
      redirect_to(:back, :notice => "Artwork deleted.")
    end
  end
end
