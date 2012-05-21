class MileageCalculator

	CHART = {'ORD-SFO' => 1846,
			 'ORD-BOS' => 866,
			 'JFK-BOS' => 186,
			 'LAX-JFK' => 2475}

	def initialize(departure_airport, arrival_airport)
		@departure_airport = departure_airport
		@arrival_airport = arrival_airport
	end

	def miles
		route = "#{@departure_airport}-#{@arrival_airport}"
		return CHART[route]
	end

end
