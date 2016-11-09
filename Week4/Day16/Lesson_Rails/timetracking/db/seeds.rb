# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create!(name: "Learn Rails", descript: "Preferably without going to war with the terminal.")
projectB = Project.create!(name: "Learn JS", descript: "Staring blankly until someone gives you the answer is NOT learning.")
projectC = Project.create!(name: "Learn CSS", descript: "Hahahahaha, j/k.")
projectD = Project.create!(name: "Practice Debugging with RSpec", descript: "Who needs QC when ya got rspec, eh?")
projectE = Project.create!(name: "Download a SQL Reader", descript: "")
projectF = Project.create!(name: "Open Chewy Quiz", descript: "Check if your JS sucks a wittle less. Don't submit!")
projectG = Project.create!(name: "Clean Your House", descript: "Pffffft. Right after ironing!")
projectH = Project.create!(name: "Read Rails: Novice to Ninja", descript: "")
projectI = Project.create!(name: "Commit Your Crap", descript: "Daily. Keep the streak goin'.")
projectJ = Project.create!(name: "Make Good Life Choices", descript: "As if that were actually possible.")

projectA.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Read Documentation")
projectA.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Organized notes into legible README in Git.")

projectB.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Finished Pre-Course Work.")
projectB.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Did all Codecademy lessons.")

projectC.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Did a Lynda tutorial on SASS.")
projectC.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Made a nice Bootstrap lp. Test on mobile.")
projectC.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Implemented Twitter icon font.")
projectC.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Learned schnazzy new animations.")

projectD.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Told Rodolfo to Suck IT!")

projectG.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Bathed the hairy horde.")
projectG.time_entries.create!(hours: 0, minutes: 15, date: Date.yesterday, comment: "Put away the laundry.")

TimeEntry.create!(hours: 0, minutes: 20, date: Date.today, comment: "Created Playlist", project_id: projectJ.id)
TimeEntry.create!(hours: 1, minutes: 45, date: Date.today, comment: "Sobbed in a Corner", project: projectJ)
projectJ.time_entries.create!(hours: 0, minutes: 10, date: Date.today, comment: "Lulz SadGirlBlog")