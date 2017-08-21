class ResponsesController < ApplicationController
  def index
    @responses = Response.all

    render("responses/index.html.erb")
  end

  def show
    @response = Response.find(params[:id])

    render("responses/show.html.erb")
  end

  def new
    @response = Response.new

    render("responses/new.html.erb")
  end

  def create
    @response = Response.new

    @response.engagement_id = params[:engagement_id]
    @response.feeling_id = params[:feeling_id]

    save_status = @response.save

    if save_status == true
      redirect_to("/responses/#{@response.id}", :notice => "Response created successfully.")
    else
      render("responses/new.html.erb")
    end
  end

  def edit
    @response = Response.find(params[:id])

    render("responses/edit.html.erb")
  end

  def update
    @response = Response.find(params[:id])

    @response.engagement_id = params[:engagement_id]
    @response.feeling_id = params[:feeling_id]

    save_status = @response.save

    if save_status == true
      redirect_to("/responses/#{@response.id}", :notice => "Response updated successfully.")
    else
      render("responses/edit.html.erb")
    end
  end

  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    if URI(request.referer).path == "/responses/#{@response.id}"
      redirect_to("/", :notice => "Response deleted.")
    else
      redirect_to(:back, :notice => "Response deleted.")
    end
  end
end
