$patients = [
    { id: 1, species:"dog", name:"Jack", owner:"John Smith", phone: "999-999-9999"},
    { id: 2, species:"bird", name:"Mia", owner:"Jane Doe", phone: "888-888-8888"},
    { id: 3, species:"cat", name:"Rose", owner:"Louis Medina", phone: "111-111-1111"}    
]

$clinics = [
    { id: 1, clinic_name: "Flatiron Veterinary Clinic", address: "111 Hacker Way", phone: "777-777-7777"},
    { id: 2, clinic_name: "Bakersville Veterinary Clinic", address: "222 Hyde Street", phone: "666-666-6666"},
    ]

def initialize_app 
    puts 'welcome to phase-3'

    puts "Welcome to Flatiron Veterinary Clinic"
    puts "Please Choose an Option:"
    puts "1. List All Patients"
    puts "2. List All Clinics"
    puts "3. List All Patient Names"
    puts "4. List All Clinic Names"
    puts "5. List All Clinic Addresses"
    puts "6. Create New Patient"
    puts "0. Exit"

    user_input = gets.strip

    case user_input
        when "1"
            $patients.each do |patient| 
                puts patient
            end
        when "0"
            puts "Goodbye!"
        when "2"
            $clinics.each do |clinic|
                puts clinic
            end
        when "3"
            patent_names = $patients.map { |patient| patient[:name]}
            puts patent_names
        when "4"
            clinic_names = $clinics.map { |clinic| clinic[:clinic_name]}
            puts clinic_names
        when "5"
            clinic_addresses = $clinics.map { |clinic| clinic[:address]}
            puts clinic_addresses
        when "6"
            create_patient()
    end
end 


def create_patient
    puts "Please enter species:"
    patient_species = gets.strip
    puts "Please enter name:"
    patient_name = gets.strip
    puts "Please enter owner:"
    patient_owner = gets.strip
    puts "Please enter phone:"
    patient_phone = gets.strip

    new_patient = {
        id: $patients.length + 1,
        species: patient_species,
        name: patient_name,
        owner: patient_owner,
        phone: patient_owner
    }

    $patients << new_patient

    puts $patients
end