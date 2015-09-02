class VipsController < ApplicationController

	def index
		@vips = Vip.all
		@organization = Organization.find(params[:organization_id])
	end
	
	def new
		@organization = Organization.find(params[:organization_id])
		@vip = @organization.vips.new
	end

	def edit
		@vip = Vip.find(params[:id])
	end

	def create
		@organization = Organization.find(params[:organization_id])
		@vip = @organization.vips.build(vip_params)
	
		if @vip.save
			redirect_to organization_path(@organization)
		else
			render 'new'
		end
	end

	def update
		@organization = Organization.find(params[:organization_id])
	end

	def destroy
		@vip = Vip.find(params[:id])
		@vip.destroy

		redirect_to organization_vips_path
	end

	private

	def vip_params
		params.require(:vip).permit(:name, :about, :organization_id)
	end
end
