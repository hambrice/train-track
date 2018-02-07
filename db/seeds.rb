# trainer = Trainer.create(first_name: "Brad", last_name: "Hambrice", email: "hambrice@uab.edu", password: "547623")
# client1 = Client.create(first_name: "Caitlin", last_name: "Lopez", email: "lopez@uab.edu", password: "547623")
# client2 = Client.create(first_name: "Lauren", last_name: "Duke", email: "duke@uab.edu", password: "547623")
# client3 = Client.create(first_name: "Andy", last_name: "Herren", email: "herren@uab.edu", password: "547623")
# client4 = Client.create(email: "hambrice@uab.edu")
#
# trainer.clients << client1
# trainer.clients << client2
# trainer.clients << client3
# trainer.clients << client4
Exercise.create(title: "Dumbbell Press", description: "do them", sets:3, reps: 8, body_region: "Chest")
Exercise.create(title: "Pullups", description: "do plenty", sets:3, reps: 8, body_region: "Back")
Exercise.create(title: "Bicep Curls", description: "work hard", sets:3, reps: 8, body_region: "Biceps")
Exercise.create(title: "Barbell Bench Press", description:"make it hurt", sets: 5, reps: 5, body_region: "Chest")
Exercise.create(title: "Squats", description: "ass to grass", sets: 5, reps:5, body_region:"Legs")
trainer = Trainer.create(first_name: "Jacob", last_name: "Waterman", email: "jacob@gmail.com", password: "jacob")
client1 = Client.create(first_name: "Taros", last_name: "Olivoman", email: "taros@gmail.com", password: "taros")
trainer.clients << client1
trainer2 = Trainer.create(first_name: "Josh", last_name: "MacFawn", email: "josh@gmail.com", password: "josh")
client2 = Client.create(first_name: "Charger", last_name: "MacFawn", email: "charger@gmail.com", password: "charger")
trainer2.clients << client2
