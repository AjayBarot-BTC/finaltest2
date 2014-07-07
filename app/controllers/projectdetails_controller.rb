class ProjectdetailsController < ApplicationController
  before_action :set_projectdetail, only: [:show, :edit, :update, :destroy]
  def index
    @projectdetails = Projectdetail.page(params[:page]).per(5).order('dead_line_date asc')
  end

  def show
  end

  def new
    @projectdetail = Projectdetail.new
  end

  def edit
  end

  def create
    #@micropost = current_user.microposts.build(micropost_params)
    @projectdetail = Projectdetail.new(projectdetail_params)
    #@projectdetail = organization.projectdetails.build(projectdetail_params)
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
      if @projectdetail.update(projectdetail_params2) 
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
      params.require(:projectdetail).permit(:proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status, :org_name)
    end

    def projectdetail_params2
      params.require(:projectdetail).permit(:proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status)
    end
end
