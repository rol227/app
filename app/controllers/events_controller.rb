class EventsController < ApplicationController

	def new
		@organization = Organization.find(params[:organization_id])
		@event = @organization.events.new
	end

	def create
		@organization = Organization.find(params[:organization_id])
		@event = @organization.events.build(event_params)

		if @event.save
			redirect_to organization_path(@organization)
		else
			render 'new'
		end
	end

	def update
	end

	private
	def event_params
		params.require(:event).permit(:when)
	end
end
