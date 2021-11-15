class AddSpecialtyToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :specialty, foreign_key: true 
  end
end
