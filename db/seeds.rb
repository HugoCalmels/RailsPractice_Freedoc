# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

# Specialties seed
10.times do 
  s = Specialty.create(
    name: Faker::Job.field
  )
end

# Cities seed
10.times do 
  c = City.create(
    name: Faker::Address.city
  )
  c.errors.messages
end

# Doctors seed
10.times do 
  d = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: Specialty.all.sample,
    zip_code: Faker::Address.zip_code,
    city: City.all.sample,
  )
  d.errors.messages
end

# Patients seed
10.times do 
  p = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
  p.errors.messages
end

# Appointment seed
a1 = Appointment.create(
  patient: Patient.all.sample,
  doctor: Doctor.all.sample
)

a2 = Appointment.create(
  patient: Patient.all.sample,
  doctor: Doctor.all.sample 
)


puts "%" * 30
puts "%%% Database filled ! %%%"