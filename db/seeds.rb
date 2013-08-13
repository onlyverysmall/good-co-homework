# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({ first_name: "Huey", last_name: "X", company_id: 1, strength_score: 10 })
User.create!({ first_name: "Dewey", last_name: "Y", company_id: 1, strength_score: 35 })
User.create!({ first_name: "Louie", last_name: "Z", company_id: 2, strength_score: 71 })

Company.create!({ name: "Company Acme" })
Company.create!({ name: "Company Mace" })

Job.create!({ title: "Lobbyist", company_id: 1, job_score: 20 })
Job.create!({ title: "Speaker", company_id: 1, job_score: 32 })
Job.create!({ title: "Talker", company_id: 1, job_score: 65 })
Job.create!({ title: "Sweeper", company_id: 2, job_score: 21 })
Job.create!({ title: "Shaker", company_id: 2, job_score: 71 })