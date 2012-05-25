class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_number, :departure_date, :flight_id, :user_id

  belongs_to :user
  belongs_to :flight
end
