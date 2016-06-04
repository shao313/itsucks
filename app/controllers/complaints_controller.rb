class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.all
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new
    @complaint.company_id = params[:company_id]
    @complaint.user_id = params[:user_id]
    @complaint.body = params[:body]
    @complaint.caption = params[:caption]

    if @complaint.save
      redirect_to "/complaints", :notice => "Complaint created successfully."
    else
      render 'new'
    end
  end

  def edit
    @complaint = Complaint.find(params[:id])
  end

  def update
    @complaint = Complaint.find(params[:id])

    @complaint.company_id = params[:company_id]
    @complaint.user_id = params[:user_id]
    @complaint.body = params[:body]
    @complaint.caption = params[:caption]

    if @complaint.save
      redirect_to "/complaints", :notice => "Complaint updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @complaint = Complaint.find(params[:id])

    @complaint.destroy

    redirect_to "/complaints", :notice => "Complaint deleted."
  end
end
