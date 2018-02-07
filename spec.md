# Specifications for the Sinatra Assessment

Specs:
- [X] Use Sinatra to build the app
- [X] Use ActiveRecord for storing information in a database
      New users, plans, and exercises can all be stored
- [X] Include more than one model class (list of model class names e.g. User, Post, Category) Utilizes Trainers, Clients, Exercises, Plans
- [X] Include at least one has_many relationship (x has_many y e.g. User has_many Posts) A Trainer has_many Clients and Plans, a Plan has_many Exercises, etc
- [X] Include user accounts - New clients and trainers can be registered and those accounts be logged into
- [X] Ensure that users can't modify content created by other users - Clients cannot modify plans or exercises
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Plans have CRUD capability
- [X] Include user input validations - Logging in checks for correct passwords, registering requires full form be completed
- [X] Display validation failures to user with error message (example form URL e.g. /posts/new) flash[:messages] used to display when passwords are incorrect, etc
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message
