class FlightsController < ApplicationController

	def index
		if params[:keyword].present?
		@flights = Flight.where("LOWER(departure_airport)LIKE?","%#{params[:keyword].downcase}%")
		@flights = @flights.page(params[:page]).per(4)	
		else

		@flights = Flight.page(params[:page]).per(4)
		end
	end

end