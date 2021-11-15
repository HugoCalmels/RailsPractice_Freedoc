class Doctor < ApplicationRecord
  has_many :appointments, :dependent => :delete_all 
  has_many :patients, through: :appointments, :dependent => :delete_all 
  belongs_to :city
  belongs_to :specialty
end
