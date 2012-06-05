class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :miles

  has_many :reservations

  has_secure_password

  validates :name, presence: true,
  				   uniqueness: {case_sensitive: false}

  validates :password, presence: true
  validates :password_confirmation, presence: true

  before_create :set_miles_to_zero

  def set_miles_to_zero
  	self.miles = 0
  end

 

end
