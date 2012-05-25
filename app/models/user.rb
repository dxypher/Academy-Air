class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation

  has_one :reservation

  has_secure_password

  validates :name, presence: true,
  				   uniqueness: {case_sensitive: false}

  validates :password, presence: true
  validates :password_confirmation, presence: true


end
