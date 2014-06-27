class ProjectdetailsController < ApplicationController
  before_action :set_projectdetail, only: [:show, :edit, :update, :destroy]

  # GET /projectdetails
  # GET /projectdetails.json
  def index
    @projectdetails = Projectdetail.all
  end

  # GET /projectdetails/1
  # GET /projectdetails/1.json
  def show
  end

  # GET /projectdetails/new
  def new
    @projectdetail = Projectdetail.new
  end

  # GET /projectdetails/1/edit
  def edit
  end

  # POST /projectdetails
  # POST /projectdetails.json
  def create
    @projectdetail = Projectdetail.new(projectdetail_params)

    respond_to do |format|
      if @projectdetail.save
        format.html { redirect_to @projectdetail, notice: 'Projectdetail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projectdetail }
      else
        format.html { render action: 'new' }
        format.json { render json: @projectdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectdetails/1
  # PATCH/PUT /projectdetails/1.json
  def update
    respond_to do |format|
      if @projectdetail.update(projectdetail_params)
        format.html { redirect_to @projectdetail, notice: 'Projectdetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projectdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectdetails/1
  # DELETE /projectdetails/1.json
  def destroy
    @projectdetail.destroy
    respond_to do |format|
      format.html { redirect_to projectdetails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectdetail
      @projectdetail = Projectdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectdetail_params
      params.require(:projectdetail).permit(:proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status)
    end
end
