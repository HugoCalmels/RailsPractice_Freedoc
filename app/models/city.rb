class City < ApplicationRecord
  has_many :appointments, :dependent => :delete_all 
  has_many :patients, :dependent => :delete_all 
  has_many :doctors, :dependent => :delete_all 
end
