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
		miles=  CHART[route]
		if miles.nil?
			route = "#{@arrival_airport}-#{@departure_airport}"
			miles= CHART[route]
		end
		return miles
	end

end
