# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Preparing to seed data..."

Education.destroy_all
TalentProfile.destroy_all
User.destroy_all



# Users

Mary = User.find_or_initialize_by(first_name: 'Mary', last_name: 'Smith', email: 'mary@gmail.com', role: 'recruiter')
Mary.password = 'qwerty'
Mary.save

Peter = User.find_or_initialize_by(first_name: 'Peter', last_name: 'Martins', email: 'peter@gmail.com', role: 'recruiter')
Peter.password = 'qwerty'
Peter.save

Sarah = User.find_or_initialize_by(first_name: 'Sarah', last_name: 'Williams', email: 'sarah@gmail.com', role: 'talent')
Sarah.password = 'qwerty'
Sarah.save

Pierre = User.find_or_initialize_by(first_name: 'Pierre', last_name: 'Blanc', email: 'pierre@gmail.com', role: 'talent')
Pierre.password = 'qwerty'
Pierre.save

Chen = User.find_or_initialize_by(first_name: 'Chen', last_name: 'Wu', email: 'chen@gmail.com', role: 'talent')
Chen.password = 'qwerty'
Chen.save

Kumar = User.find_or_initialize_by(first_name: 'Kumar', last_name: 'Das', email: 'kumar@gmail.com', role: 'recruiter')
Kumar.password = 'qwerty'
Kumar.save


# Talent Profiles

Pierre_Profile = TalentProfile.find_or_initialize_by(experience_years:5, skills:'Rails', user: Pierre)
Pierre_Profile.save

Sarah_Profile = TalentProfile.find_or_initialize_by(experience_years:2, skills:'JavaScript', user: Sarah)
Sarah_Profile.save



# Education

Pierre_Education = Education.find_or_initialize_by(uni_name: 'New Town University', education_type: 'Undergraduate', field_of_study: 'Computer Science', grade: 'Upper Second', start_date: DateTime.new(2003,9,3,0,0,0), end_date: DateTime.new(2007,6,3,0,0,0), talent_profile: Pierre_Profile )
Pierre_Education.save

Sarah_Education = Education.find_or_initialize_by(uni_name: 'Old Town University', education_type: 'Undergraduate', field_of_study: 'History', grade: 'Upper Second', start_date: DateTime.new(2003,9,3,0,0,0), end_date: DateTime.new(2007,6,3,0,0,0), talent_profile: Sarah_Profile )
Sarah_Education.save

puts "Finished seeding"
