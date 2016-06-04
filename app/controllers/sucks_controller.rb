class SucksController < ApplicationController
  def index
    @sucks = Suck.all
  end

  def show
    @suck = Suck.find(params[:id])
  end

  def new
    @suck = Suck.new
  end

  def create
    @suck = Suck.new
    @suck.user_id = params[:user_id]
    @suck.complaint_id = params[:complaint_id]

    if @suck.save
      redirect_to "/sucks", :notice => "Suck created successfully."
    else
      render 'new'
    end
  end

  def edit
    @suck = Suck.find(params[:id])
  end

  def update
    @suck = Suck.find(params[:id])

    @suck.user_id = params[:user_id]
    @suck.complaint_id = params[:complaint_id]

    if @suck.save
      redirect_to "/sucks", :notice => "Suck updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @suck = Suck.find(params[:id])

    @suck.destroy

    redirect_to "/sucks", :notice => "Suck deleted."
  end
end
