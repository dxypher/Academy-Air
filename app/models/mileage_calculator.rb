class MileageCalculator

	CHART = { "ORD-SFO" => 1846, 
            'ORD-SEA' => 1721, 
            'ORD-BOS' => 866, 
            'ORD-JFK' => 740, 
            'ORD-LAX' => 1744, 
            'JFK-BOS' => 186, 
            'JFK-LAX' => 2475, 
            'JFK-SEA' => 2421, 
            'LAX-SEA' => 954,
            'JFK-SFO'=> 2586,
            'LAX-SFO'=> 338 
          }
  
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
