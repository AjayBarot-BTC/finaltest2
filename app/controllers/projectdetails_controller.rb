class ProjectdetailsController < ApplicationController
  before_action :set_projectdetail, only: [:show, :edit, :update, :destroy]
  before_action :blank_name, only: :destroy

  def index
    #@projectdetails = projectdetail.all
    @projectdetails = Projectdetail.order('dead_line_date asc').page(params[:page]).per(5).where("proj_name LIKE ? OR status LIKE ?", "#{params[:search]}%", "#{params[:search]}%")
    
    #@searches = User.joins([:requests]).where("name LIKE ? OR destination LIKE ?","#{params[:search]}%", "#{params[:search]}%")
    @organizations = Organization.all
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
      params.require(:projectdetail).permit(:proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status)
    end

    def blank_name
      redirect_to(root_url) unless @projectdetail.org_name == nil 
    end
end
