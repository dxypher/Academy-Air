class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :departure_airport, :departure_time, :distance, :flight_number, :seats

  has_many :reservations
  has_many :users, :through => :reservations

  before_save :calculate_distance

  def calculate_distance
  	mc = MileageCalculator.new(self.departure_airport, self.arrival_airport)
  	self.distance = mc.miles   	
  end 
end
