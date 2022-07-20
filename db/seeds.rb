puts " Seeding data...⏳"
 #users
User.create(username: "MarkyMark", password: "hounddog", email:"mark@marky.com", bio: "I live in #808. I have lived in the building for a few years with my dog. I love other animals.")
User.create(username: "Cindy1", password: "rosebud", email:"Chone@fmail.com", bio: "Hi, I live down the block. I don't currently have a fish tank of pet fish, but I also grew up with dogs, and other animals. I would love to help out anytime.")
User.create(username: "Corey", password: "1234", email:"corey@me.com", bio: "I live in #23 with my two cats. I work from home, so I can help out with enough notice to pet sit for anyone in the building.")
User.create(username: "Bob", password: "4321", email:"CallBob@handyman.com", bio: "I am the building's on site handyman so I am in the building everyday. I have a dog that is really friendly with people and other dogs. Happy to add your dog to our walks if needed, or feed your pet while you are away. Just let me know.")
User.create(username: "DylanPickle", password: "rabbithole", email:"dyle@pickel.com", bio: "I have a pet snake, and grew up with dogs, so I love animals. I work from 9-6 in the city, but would be happy to help feed and walk any pet you need during non working hours.")

 # posts requests
Post.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLIVritxtS_9LYDEjkpJSqL7UEZmLsCTJimw&usqp=CAU", start_date:'2022-06-09T09:00',end_date:'2022-06-12T16:00', notes:"I will be away visiting family, and my dog Duke unfortunatly is too old to travel. He just needs a walk in the mid morning everyday, and evening. They have an automatic feeder but you are welcome to give him treats. He mostly sleeps when he is at home, so so he will be easy to take care of. He is really good with dogs so if you would prefer to have him stay with you, he and I won't mind." )
Post.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0KldwRAXOUzmWu4V_aW0ApP8qGIt0hyHjGg&usqp=CAU", start_date:'2022-08-10T9:00',end_date: '2022-08-217T16:00', notes: "Our cats need their litter box cleaed on the 15th, and they will need a can of food a fresh water everyone morning and evening.")
Post.create(image: "https://www.aspca.org/sites/default/files/trot1banner.jpg", start_date:'2022-08-27T11:00', end_date: '2022-06-27thT13:00', notes:"I have to be out of town for a day and I just need someone to walk and feed my dog in the mid morning of the 27th. Her name is Lady, and she is 6 years old. Very friendly with people and other pets.")
Post.create(image: "https://www.homestratosphere.com/wp-content/uploads/2019/03/1-5-3-1.jpg.webp", start_date: '2022-07-30T08:00',end_date: '2022-08-03T10:00', notes:"I have a fish tank with 7 fish and some hermit crabs. I just need someone to check on them every morning to give them food and make sure that their tank filter is ok. Pretty easy care, but will leave contact info to specialist for the tank and fish if you discover any isues while I am away" )
Post.create(image: "https://reptpedia.com/wp-content/uploads/2021/03/1f9e9855f9439b69e9eb296640f9684f-1024x768.jpg", start_date:'2022-09-08T9:00',end_date: '2022-09-20T16:00', notes:"Hi, I'm going to be away for a while and my pet snake will need to be fed every two days, and be checked on. It's ok if you don't like snaks, he will just need a frozen mouse put into his dish to eat and his water bowl cleaned and filled as needed. If you like snakes he is very friendly and loves to be held. But he is a little guy and would be ok to be left in his tank while I am away. Thanks in advance." )

 

 #vvounteer
 Member.create(user_id:1 , post_id:3 ,email: "mark@marky.com")
 Member.create(user_id:2 , post_id:4 ,email: "Chone@fmail.com")
 Member.create(user_id:3 , post_id:2 ,email: "corey@me.com")
 Member.create(user_id:4 , post_id:1 ,email: "CallBob@handyman.com")
 Member.create(user_id:5 , post_id:5 ,email: "dyle@pickel.com") 



 puts "✅ Done seeding!"