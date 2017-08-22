class EngagementsController < ApplicationController
  def index
    @engagements = Engagement.all

    render("engagements/index.html.erb")
  end

  def show
    @engagement = Engagement.find(params[:id])
    
    @responses = @engagement.responses

    render("engagements/show.html.erb")
  end

  def new
    @engagement = Engagement.new
    @feelings = Feeling.all
    @response = Response.new

    render("engagements/new.html.erb")
  end

  def create
    @engagement = Engagement.new

    @engagement.user_id = params[:user_id]
    @engagement.artwork_id = params[:artwork_id]
    @engagement.notes = params[:notes]
    @engagement.feeling_id = params[:feeling_id]
    # @engagement.feeling = params[:feelings]
    save_status = @engagement.save
    
    


    if save_status == true
      redirect_to("/engagements/#{@engagement.id}", :notice => "Engagement created successfully.")
    else
      render("engagements/new.html.erb")
    end
  end

  def edit
    @engagement = Engagement.find(params[:id])

    render("engagements/edit.html.erb")
  end

  def update
    @engagement = Engagement.find(params[:id])

    @engagement.user_id = params[:user_id]
    @engagement.artwork_id = params[:artwork_id]
    @engagement.notes = params[:notes]

    save_status = @engagement.save

    if save_status == true
      redirect_to("/engagements/#{@engagement.id}", :notice => "Engagement updated successfully.")
    else
      render("engagements/edit.html.erb")
    end
  end

  def destroy
    @engagement = Engagement.find(params[:id])

    @engagement.destroy

    if URI(request.referer).path == "/engagements/#{@engagement.id}"
      redirect_to("/", :notice => "Engagement deleted.")
    else
      redirect_to("/", :notice => "Engagement deleted.")
    end
  end
end
