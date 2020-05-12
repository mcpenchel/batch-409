# This is where you can create initial data for your app.


neurologist = Doctor.create(
  first_name: "Thiago",
  last_name: "Teixeira",
  specialty: "Neurologist"
)

head_surgeon = Doctor.create(
  first_name: "Stefano",
  last_name: "Fiuzza",
  specialty: "Head Surgeon"
)

diogo = Patient.create(
  name: "Diogo Queiroz",
  disease: "To be defined..."
)

viktor = Patient.create(
  name: "Viktor Araujo",
  disease: "He's always late for the lecture"
)

Consultation.create(
  doctor: head_surgeon,
  patient: viktor
)

Consultation.create(
  doctor: head_surgeon,
  patient: diogo
)
