trainer = Trainer.create(first_name: "Brad", last_name: "Hambrice", email: "hambrice@uab.edu", password: "547623")
client1 = Client.create(first_name: "Caitlin", last_name: "Lopez", email: "lopez@uab.edu", password: "547623")
client2 = Client.create(first_name: "Lauren", last_name: "Duke", email: "hambrice@uab.edu", password: "547623")
client3 = Client.create(first_name: "Andy", last_name: "Herren", email: "hambrice@uab.edu", password: "547623")
client4 = Client.create(email: "hambrice@uab.edu")

trainer.clients << client1
trainer.clients << client2
trainer.clients << client3
trainer.clients << client4
Exercise.create(title: "Pushups", description: "do them", sets:3, reps: 8, body_region: "Chest")
Exercise.create(title: "Pullups", description: "do plenty", sets:3, reps: 8, body_region: "Back")
Exercise.create(title: "Bicep Curls", description: "work hard", sets:3, reps: 8, body_region: "Biceps")
