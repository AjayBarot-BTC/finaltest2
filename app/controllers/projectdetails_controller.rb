class ProjectdetailsController < ApplicationController
  before_action :set_projectdetail, only: [:show, :edit, :update, :destroy]
  #before_action :blank_name, only: :destroy

  def index
    #@projectdetails = projectdetail.all
    

    #search by method in model

    @projectdetails = Projectdetail.order('dead_line_date asc').paginate(:page => params[:page], :per_page => 5).search(params[:search],params[:status],params[:org_name])
    
   

    #my method using kaminari
    #@projectdetails = Projectdetail



    #search not performed
    #@projectdetails = Projectdetail.order('dead_line_date asc').search(params[:search],params[:status],params[:org_id]).paginate(:page => params[:page], :per_page => 5)
    

    #experiment
    #@projectdetails = Projectdetail.where("org_id = ?",params[:org_id]).paginate(:page => params[:page])



    #.paginate(:page => params[:page])
    #using will_paginate
    #page(params[:page]).per(5).where("proj_name LIKE ? OR status LIKE ?", "#{params[:search]}%", "#{params[:search]}%")
    #paginate(:page => params[:page], :per_page => 5)
   # @projectdetails = Projectdetail.search(params[:search],params[:status],params[:org_id]).paginate(:page => params[:page])
    #@projectdetails = Projectdetail.paginate(:page => params[:page], :per_page => 5).order('dead_line_date asc')

    #{params[:search]}%", "#{params[:search]}%
    #@projects = Project.search(params[:search],params[:status],params[:client_id]).paginate(:page => params[:page])
    #@searches = User.joins([:requests]).where("name LIKE ? OR destination LIKE ?","#{params[:search]}%", "#{params[:search]}%")
    #@organizations = Organization.all
  
    #@projectdetails = Projectdetail.joins([:organizations]).where("proj_name LIKE ? OR status LIKE ? OR org_id LIKE?", "#{params[:search]}%", "#{params[:status]}%", "#{params[:org_id]}%")
  end

  def show
  end

  def new
    @projectdetail = Projectdetail.new
  end

  def edit
  end

  def create
    @projectdetail = Projectdetail.new(projectdetail_params)
    respond_to do |format|
      if @projectdetail.save
        format.html { redirect_to @projectdetail, notice: 'Projectdetail was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @projectdetail.update(projectdetail_params) 
        format.html { redirect_to @projectdetail, notice: 'Projectdetail was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @projectdetail.destroy
    respond_to do |format|
      format.html { redirect_to projectdetails_url }
    end
  end

  private
    def set_projectdetail
      @projectdetail = Projectdetail.find(params[:id])
    end

    def projectdetail_params
      params.require(:projectdetail).permit(:proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status, :org_id)
    end

    def blank_name
      #redirect_to(root_url) unless @projectdetail.org_id == nil 
    end
end