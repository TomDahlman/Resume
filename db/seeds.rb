# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Clearing the all entries in the Experience, Duty, Education & Skill tables, if any."
Experience.destroy_all
Duty.destroy_all
Education.destroy_all
Skill.destroy_all

a = Experience.create(:when => "2013", :where => "The Starter League", :role => "Tutor at large")
b = Experience.create(:when => "1999-2012", :where => "Verizon Wireless/Alltel Communications", :role => "Sr. Systems Analyst")
c = Experience.create(:when => "1998-1999", :where => "Microhard Technologies", :role => "Technical Instructor")

m = Duty.create(:description => "Answer students' questions", :experience_id => a.id)
n = Duty.create(:description => "pair program; review code", :experience_id => a.id)
o = Duty.create(:description => "Designed and built company wide software distribution architecture", :experience_id => b.id)
p = Duty.create(:description => "Configured MS SQL database for software and hardware inventory ", :experience_id => b.id)
q = Duty.create(:description => "Established support for systems on the Internet via secured file cache and firewall", :experience_id => b.id)
r = Duty.create(:description => "Instructor for courses:  Intro to Networking / CompTIA A+ / MCSE core courses / TCP/IP", :experience_id => c.id)

Education.create(:where => "The Starter League", :when => "Winter 2012", :what => "Web Developmen(Ruby on Rails)")
Education.create(:where => "Northeastern Illinois University", :when => "1996", :what => "Bachelor of Arts")

Skill.create(:what => "Creative problem solving")
Skill.create(:what => "Ruby on Rails")
Skill.create(:what => "Constructive humor")


puts "Creating #{Experience.count} entries in the Experience's table."
puts "and . . ."
puts "Creating #{Duty.count} entries in the Dutys' table."
puts "and . . ."
puts "Creating #{Education.count} entries in the Education table."
puts "and . . ."
puts "Creating #{Skill.count} entries in the Skills' table."