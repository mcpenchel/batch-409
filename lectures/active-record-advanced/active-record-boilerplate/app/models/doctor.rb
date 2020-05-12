class Doctor < ActiveRecord::Base

  SPECIALTIES = [
    "Head Surgeon",
    "Neurologist",
    "Psychiatrist"
  ]

  has_many :interns
  has_many :consultations

  has_many :patients, through: :consultations

  validates :specialty, inclusion: { in: SPECIALTIES }


  validates :first_name, :last_name, :specialty, presence: true
end
