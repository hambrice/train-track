trainer = Trainer.create(first_name: "Brad", last_name: "Hambrice", email: "hambrice@uab.edu", password: "547623")
client1 = Client.create(first_name: "Caitlin", last_name: "Lopez", email: "lopez@uab.edu", password: "547623")
client2 = Client.create(first_name: "Lauren", last_name: "Duke", email: "hambrice@uab.edu", password: "547623")
client3 = Client.create(first_name: "Andy", last_name: "Herren", email: "hambrice@uab.edu", password: "547623")
trainer.clients << client1
trainer.clients << client2
trainer.clients << client3
