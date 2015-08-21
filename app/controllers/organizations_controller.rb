class OrganizationsController < ApplicationController

	def index
		@organizations = Organization.all
	end

	def show
		@organization = Organization.find(params[:id])
	end

	def new
		@organization = Organization.new
	end

	def edit
	end

	def create
		@organization = Organization.new(params[org_params])
		if @organization.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private
	def org_params
		params.require(:organization).permit(:name)
	end

end
