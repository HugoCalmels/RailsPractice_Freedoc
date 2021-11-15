class Patient < ApplicationRecord
  has_many :appointments, :dependent => :delete_all 
  has_many :doctors, through: :appointments, :dependent => :delete_all 
  belongs_to :city
end
