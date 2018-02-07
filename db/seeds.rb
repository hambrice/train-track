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
Exercise.create(title: "Dumbbell Press", description: "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other.<br><br>
Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width.<br><br>
Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position.<br><br>
Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest.<br><br>
Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them.<br><br>
Repeat the movement for the prescribed amount of repetitions.<br><br>
When you are done, place the dumbbells back on your thighs and then on the floor. This is the safest manner to release the dumbbells.", sets:3, reps: 8, body_region: "Chest")
Exercise.create(title: "Barbell Bench Press", description:"Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.<br><br>
From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.<br><br>
After a brief pause, push the bar back to the starting position as you breathe out. Focus on pushing the bar using your chest muscles. Lock your arms and squeeze your chest in the contracted position at the top of the motion, hold for a second and then start coming down slowly again. Tip: Ideally, lowering the weight should take about twice as long as raising it.<br><br>
Repeat the movement for the prescribed amount of repetitions.<br><br>
When you are done, place the bar back in the rack.", sets: 5, reps: 5, body_region: "Chest")
Exercise.create(title: "Side Lateral Raise", description: "Pick a couple of dumbbells and stand with a straight torso and the dumbbells by your side at arms length with the palms of the hand facing you. This will be your starting position.<br><br>
While maintaining the torso in a stationary position (no swinging), lift the dumbbells to your side with a slight bend on the elbow and the hands slightly tilted forward as if pouring water in a glass. Continue to go up until you arms are parallel to the floor. Exhale as you execute this movement and pause for a second at the top.<br><br>
Lower the dumbbells back down slowly to the starting position as you inhale.<br><br>
Repeat for the recommended amount of repetitions.", sets:3, reps: 8, body_region: "Shoulders")
Exercise.create(title: "Front Dumbbell Raises", description: "Pick a couple of dumbbells and stand with a straight torso and the dumbbells on front of your thighs at arms length with the palms of the hand facing your thighs. This will be your starting position.<br><br>
While maintaining the torso stationary (no swinging), lift the left dumbbell to the front with a slight bend on the elbow and the palms of the hands always facing down. Continue to go up until you arm is slightly above parallel to the floor. Exhale as you execute this portion of the movement and pause for a second at the top. Inhale after the second pause.<br><br>
Now lower the dumbbell back down slowly to the starting position as you simultaneously lift the right dumbbell.<br><br>
Continue alternating in this fashion until all of the recommended amount of repetitions have been performed for each arm.", sets:3, reps: 8, body_region: "Shoulders")
Exercise.create(title: "One-Arm Dumbbell Row", description: "Choose a flat bench and place a dumbbell on each side of it.<br><br>
Place the right leg on top of the end of the bench, bend your torso forward from the waist until your upper body is parallel to the floor, and place your right hand on the other end of the bench for support.<br><br>
Use the left hand to pick up the dumbbell on the floor and hold the weight while keeping your lower back straight. The palm of the hand should be facing your torso. This will be your starting position.<br><br>
Pull the resistance straight up to the side of your chest, keeping your upper arm close to your side and keeping the torso stationary. Breathe out as you perform this step. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. Also, make sure that the force is performed with the back muscles and not the arms. Finally, the upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the dumbbell; therefore do not try to pull the dumbbell up using the forearms.<br><br>
Lower the resistance straight down to the starting position. Breathe in as you perform this step.<br><br>
Repeat the movement for the specified amount of repetitions.<br><br>
Switch sides and repeat again with the other arm.", sets:3, reps: 8, body_region: "Back")
Exercise.create(title: "Pullups", description: "Grab the pull-up bar with the palms facing forward using the prescribed grip. Note on grips: For a wide grip, your hands need to be spaced out at a distance wider than your shoulder width. For a medium grip, your hands need to be spaced out at a distance equal to your shoulder width and for a close grip at a distance smaller than your shoulder width.<br><br>
As you have both arms extended in front of you holding the bar at the chosen grip width, bring your torso back around 30 degrees or so while creating a curvature on your lower back and sticking your chest out. This is your starting position.<br><br>
Pull your torso up until the bar touches your upper chest by drawing the shoulders and the upper arms down and back. Exhale as you perform this portion of the movement. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. The upper torso should remain stationary as it moves through space and only the arms should move. The forearms should do no other work other than hold the bar.<br><br>
After a second on the contracted position, start to inhale and slowly lower your torso back to the starting position when your arms are fully extended and the lats are fully stretched.<br><br>
Repeat this motion for the prescribed amount of repetitions.", sets: 5, reps:5, body_region:"Back")
Exercise.create(title: "Preacher Curl", description: "To perform this movement you will need a preacher bench and an E-Z bar. Grab the E-Z curl bar at the close inner handle (either have someone hand you the bar which is preferable or grab the bar from the front bar rest provided by most preacher benches). The palm of your hands should be facing forward and they should be slightly tilted inwards due to the shape of the bar.<br><br>
With the upper arms positioned against the preacher bench pad and the chest against it, hold the E-Z Curl Bar at shoulder length. This will be your starting position.<br><br>
As you breathe in, slowly lower the bar until your upper arm is extended and the biceps is fully stretched.<br><br>
As you exhale, use the biceps to curl the weight up until your biceps is fully contracted and the bar is at shoulder height. Squeeze the biceps hard and hold this position for a second.<br><br>
Repeat for the recommended amount of repetitions.", sets: 4, reps:10, body_region:"Biceps")
Exercise.create(title: "Triceps Pushdown", description: "Attach a straight or angled bar to a high pulley and grab with an overhand grip (palms facing down) at shoulder width.<br><br>
Standing upright with the torso straight and a very small inclination forward, bring the upper arms close to your body and perpendicular to the floor. The forearms should be pointing up towards the pulley as they hold the bar. This is your starting position.<br><br>
Using the triceps, bring the bar down until it touches the front of your thighs and the arms are fully extended perpendicular to the floor. The upper arms should always remain stationary next to your torso and only the forearms should move. Exhale as you perform this movement.<br><br>
After a second hold at the contracted position, bring the bar slowly up to the starting point. Breathe in as you perform this step.<br><br>
Repeat for the recommended amount of repetitions.", sets: 5, reps:8, body_region:"Triceps")
Exercise.create(title: "Hanging Leg Raise", description: "Hang from a chin-up bar with both arms extended at arms length in top of you using either a wide grip or a medium grip. The legs should be straight down with the pelvis rolled slightly backwards. This will be your starting position.<br><br>
Raise your legs until the torso makes a 90-degree angle with the legs. Exhale as you perform this movement and hold the contraction for a second or so.<br><br>
Go back slowly to the starting position as you breathe in.<br><br>
Repeat for the recommended amount of repetitions.", sets: 3, reps:12, body_region:"Abs")
Exercise.create(title: "Barbell Walking Lunge", description: "
Begin standing with your feet shoulder width apart and a barbell across your upper back.<br><br>
Step forward with one leg, flexing the knees to drop your hips. Descend until your rear knee nearly touches the ground. Your posture should remain upright, and your front knee should stay above the front foot.<br><br>
Drive through the heel of your lead foot and extend both knees to raise yourself back up.<br><br>
Step forward with your rear foot, repeating the lunge on the opposite leg.", sets: 3, reps:12, body_region:"Legs")
Exercise.create(title: "Barbell Squats", description: "Begin with the barbell supported on top of the traps. The chest should be up and the head facing forward. Adopt a hip-width stance with the feet turned out as needed.<br><br>
Descend by flexing the knees, refraining from moving the hips back as much as possible. This requires that the knees travel forward. Ensure that they stay align with the feet. The goal is to keep the torso as upright as possible.<br><br>
Continue all the way down, keeping the weight on the front of the heel. At the moment the upper legs contact the lower legs reverse the motion, driving the weight upward.<br><br>
", sets: 5, reps:5, body_region:"Glutes")
# trainer = Trainer.create(first_name: "Jacob", last_name: "Waterman", email: "jacob@gmail.com", password: "jacob")
# client1 = Client.create(first_name: "Taros", last_name: "Olivoman", email: "taros@gmail.com", password: "taros")
# trainer.clients << client1
# client1.trainer = trainer
# trainer2 = Trainer.create(first_name: "Josh", last_name: "MacFawn", email: "josh@gmail.com", password: "josh")
# client2 = Client.create(first_name: "Charger", last_name: "MacFawn", email: "charger@gmail.com", password: "charger")
# trainer2.clients << client2
# client2.trainer = trainer2
