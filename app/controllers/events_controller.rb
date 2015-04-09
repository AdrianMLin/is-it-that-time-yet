class EventsController < ApplicationController
	def create
		new_event = Event.create({
				name: params["name"],
				notes: params["notes"],
				datetime: params["datetime"],
				user_id: params["user_id"]
			})
	end

	redirect_to request.referrer
end
