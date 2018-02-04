trainer = Trainer.create(first_name: "Brad", last_name: "Hambrice", email: "hambrice@uab.edu", password: "547623")
client1 = Client.create(first_name: "Caitlin", last_name: "Lopez", email: "lopez@uab.edu", password: "547623")
client2 = Client.create(first_name: "Lauren", last_name: "Duke", email: "hambrice@uab.edu", password: "547623")
client3 = Client.create(first_name: "Andy", last_name: "Herren", email: "hambrice@uab.edu", password: "547623")
trainer.clients << client1
trainer.clients << client2
trainer.clients << client3
Exercise.create(title: "Pushups", description: "do them", sets:3, reps: 8, body_region: "chest")
Exercise.create(title: "Pullups", description: "do plenty", sets:3, reps: 8, body_region: "back")
Exercise.create(title: "Bicep Curls", description: "work hard", sets:3, reps: 8, body_region: "biceps")
