if Rails.env.development?

	Time.zone = "America/Chicago"

	Flight.destroy_all

	codes = ['ORD', 'JFK', 'SFO', 'LAX']

	25.times do
		departure_airport, arrival_airport = codes.sample(2)
		departure_time = rand(8..20)
		flight_number = rand(100..999)

		Flight.create :flight_number => flight_number,
					  :departure_airport => departure_airport,
					  :arrival_airport => arrival_airport,
					  :departure_time => (Date.today + departure_time.hours),
					  :distance => 0,
					  :seats => rand(0..60)


	end

end