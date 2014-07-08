class OrganizationsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_organization, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@organizations = Organization.paginate(:page => params[:page], :per_page => 5)
	end

	def create
		@organization = Organization.new(organization_params)
    	respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization detail was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
	end

	def new
		@organization = Organization.new
	end

	def update
		respond_to do |format|
      if @organization.update(organization_params) 
        format.html { redirect_to @organization, notice: 'Organization detail was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
	end

	def destroy
		 @organization.destroy
    	respond_to do |format|
      	format.html { redirect_to organizations_url }
    end
	end
	
	private 

	def organization_params
		params.require(:organization).permit(:org_name, :org_country)
	end

	def set_organization
		@organization = Organization.find(params[:id])
	end
end