User.destroy_all
Request.destroy_all
Connection.destroy_all

puts " Seeding data...⏳"
 #users
User.create(username: "MarkyMark", password: "hounddog", email:"mark@marky.com", bio: "I live in #808. I have lived in the building for a few years with my dog. I love other animals.", request:"")
User.create(username: "Cindy1", password: "rosebud", email:"Chone@fmail.com", bio: "Hi, I live down the block. I don't currently have a fish tank of pet fish, but I also grew up with dogs, and other animals. I would love to help out anytime.", request:"")
User.create(username: "Corey", password: "1234", email:"corey@me.com", bio: "I live in #23 with my two cats. I work from home, so I can help out with enough notice to pet sit for anyone in the building.", request:"")
User.create(username: "Bob", password: "4321", email:"CallBob@handyman.com", bio: "I am the building's on site handyman so I am in the building everyday. I have a dog that is really friendly with people and other dogs. Happy to add your dog to our walks if needed, or feed your pet while you are away. Just let me know.", request:"")
User.create(username: "DylanPickle", password: "rabbithole", email:"dyle@pickel.com", bio: "I have a pet snake, and grew up with dogs, so I love animals. I work from 9-6 in the city, but would be happy to help feed and walk any pet you need during non working hours.", request:"")

 # posts requests
Request.create(title:"Dog Sitting", user_id:4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLIVritxtS_9LYDEjkpJSqL7UEZmLsCTJimw&usqp=CAU", start_date:'2022-06-09T09:00',end_date:'2022-06-12T16:00', description:"I will be away visiting family, and my dog Duke unfortunatly is too old to travel. He just needs a walk in the mid morning everyday, and evening. They have an automatic feeder but you are welcome to give him treats. He mostly sleeps when he is at home, so so he will be easy to take care of. He is really good with dogs so if you would prefer to have him stay with you, he and I won't mind.",  accepted: "" )
Request.create(title:"Cat Sitting", user_id:3, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0KldwRAXOUzmWu4V_aW0ApP8qGIt0hyHjGg&usqp=CAU", start_date:'2022-08-10T9:00',end_date: '2022-08-217T16:00', description: "Our cats need their litter box cleaed on the 15th, and they will need a can of food a fresh water everyone morning and evening.",  accepted: "")
Request.create(title:"Dog Walker Needed", user_id:1, image: "https://www.aspca.org/sites/default/files/trot1banner.jpg", start_date:'2022-08-27T11:00', end_date: '2022-06-27thT13:00', description:"I have to be out of town for a day and I just need someone to walk and feed my dog in the mid morning of the 27th. Her name is Lady, and she is 6 years old. Very friendly with people and other pets.",  accepted: "")
Request.create(title:"Fish Tank Care", user_id:2, image: "https://www.homestratosphere.com/wp-content/uploads/2019/03/1-5-3-1.jpg.webp", start_date: '2022-07-30T08:00',end_date: '2022-08-03T10:00', description:"I have a fish tank with 7 fish and some hermit crabs. I just need someone to check on them every morning to give them food and make sure that their tank filter is ok. Pretty easy care, but will leave contact info to specialist for the tank and fish if you discover any isues while I am away",  accepted: "" )
Request.create(title:"Snake Sitter", user_id:5, image: "https://reptpedia.com/wp-content/uploads/2021/03/1f9e9855f9439b69e9eb296640f9684f-1024x768.jpg", start_date:'2022-09-08T9:00',end_date: '2022-09-20T16:00', description:"Hi, I'm going to be away for a while and my pet snake will need to be fed every two days, and be checked on. It's ok if you don't like snaks, he will just need a frozen mouse put into his dish to eat and his water bowl cleaned and filled as needed. If you like snakes he is very friendly and loves to be held. But he is a little guy and would be ok to be left in his tank while I am away. Thanks in advance.", accepted: "")

 

 # volenteering users connection table
 Connection.create(user_id:1 , request_id:3)
 Connection.create(user_id:2 , request_id:4)
 Connection.create(user_id:3 , request_id:2)
 Connection.create(user_id:4 , request_id:1)
 Connection.create(user_id:5 , request_id:5) 


 puts "✅ Done seeding!"