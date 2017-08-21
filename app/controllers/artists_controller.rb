class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

    render("artists/index.html.erb")
  end

  def show
    @artist = Artist.find(params[:id])

    render("artists/show.html.erb")
  end

  def new
    @artist = Artist.new

    render("artists/new.html.erb")
  end

  def create
    @artist = Artist.new

    @artist.nationality = params[:nationality]
    @artist.dob = params[:dob]
    @artist.dod = params[:dod]
    @artist.name = params[:name]

    save_status = @artist.save

    if save_status == true
      redirect_to("/artists/#{@artist.id}", :notice => "Artist created successfully.")
    else
      render("artists/new.html.erb")
    end
  end

  def edit
    @artist = Artist.find(params[:id])

    render("artists/edit.html.erb")
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.nationality = params[:nationality]
    @artist.dob = params[:dob]
    @artist.dod = params[:dod]
    @artist.name = params[:name]

    save_status = @artist.save

    if save_status == true
      redirect_to("/artists/#{@artist.id}", :notice => "Artist updated successfully.")
    else
      render("artists/edit.html.erb")
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    if URI(request.referer).path == "/artists/#{@artist.id}"
      redirect_to("/", :notice => "Artist deleted.")
    else
      redirect_to(:back, :notice => "Artist deleted.")
    end
  end
end
