class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :departure_airport, :departure_time, :distance, :flight_number, :seats
end
