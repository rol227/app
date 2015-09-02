class OrganizationsController < ApplicationController
	respond_to :html, :js

	def index
		@organizations = Organization.all
		@organization = Organization.new
	end

	def show
		@organization = Organization.find(params[:id])
		@event = @organization.events.group_by(&:when)
	end

	def new
		@organization = Organization.new
	end

	def edit
	end

	def create
		@organization = Organization.new(org_params)

		respond_to do |format|
			if @organization.save
				format.html {	redirect_to root_path }
				format.js { redirect_to root_path }
			else
				render 'new'
			end
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
