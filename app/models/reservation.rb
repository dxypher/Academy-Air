class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_number, :departure_date, :flight_id, :user_id

  belongs_to :user
  belongs_to :flight

  after_create :update_flight
  #after_create :update_miles
  after_create :send_confirmation_email
  after_destroy :handle_cancellation

  def update_flight
  	if flight.seats > 0
  		flight.seats -= 1
      flight.save
  	end
  end

  def send_confirmation_email
    email = ReservationsMailer.confirm()
    email.deliver
  end
  # def update_miles
  #   user.miles += flight.distance
  #   user.save
  # end
  def handle_cancellation
    flight.seats += 1
    flight.save
  end
  
end
