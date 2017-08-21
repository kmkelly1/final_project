class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all

    render("feelings/index.html.erb")
  end
  
  def new
    @feeling = Feeling.new

    render("feelings/new.html.erb")
  end
  

  def show
    @feeling = Feeling.find(params[:id])

    render("feelings/show.html.erb")
  end

  

  def create
    @feeling = Feeling.new

    @feeling.name = params[:name]

    save_status = @feeling.save

    if save_status == true
      redirect_to("/feelings/#{@feeling.id}", :notice => "Feeling created successfully.")
    else
      render("feelings/new.html.erb")
    end
  end

  def edit
    @feeling = Feeling.find(params[:id])

    render("feelings/edit.html.erb")
  end

  def update
    @feeling = Feeling.find(params[:id])

    @feeling.name = params[:name]

    save_status = @feeling.save

    if save_status == true
      redirect_to("/feelings/#{@feeling.id}", :notice => "Feeling updated successfully.")
    else
      render("feelings/edit.html.erb")
    end
  end

  def destroy
    @feeling = Feeling.find(params[:id])

    @feeling.destroy

    if URI(request.referer).path == "/feelings/#{@feeling.id}"
      redirect_to("/", :notice => "Feeling deleted.")
    else
      redirect_to(:back, :notice => "Feeling deleted.")
    end
  end
end
