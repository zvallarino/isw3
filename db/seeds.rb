puts "🌱 Seeding spices..."

require "httparty"
require "pry"
fullArray = 
[
 [308, "Broken Flowers"],
 [377, "A Nightmare on Elm Street"],
 [451, "Leaving Las Vegas"],
 [221, "Rebel Without a Cause"],
 [184, "Jackie Brown"],

 [20, "My Life Without Me"],
 [185, "A Clockwork Orange"],
 [494, "Shaft in Africa"],
 [161, "Ocean's Eleven"],
 [28, "Apocalypse Now"],
 [273, "The White Sound"],
 [99, "All About My Mother"],
 [543, "Blackmail"],

 [169, "Predator 2"],
 [276, "The Edukators"],
 [123, "The Lord of the Rings"],
 [239, "Some Like It Hot"],
 [379, "Miller's Crossing"],
 [125, "Railway Station"],
 [156, "Wilbur Wants to Kill Himself"],

 [176, "Saw"],
 [262, "The King of Comedy"],
 [235, "Stand by Me"],
 [508, "Love Actually"],
 [189, "Sin City: A Dame to Kill For"],
 [560, "Secret Beyond the Door"],
 [471, "Bandyta"],
 [214, "Saw III"],
 [296, "Terminator 3: Rise of the Machines"],


 [19, "Metropolis"],
 [583, "Life of Brian"],

 [66, "Absolute Power"],
 [58, "Pirates of the Caribbean: Dead Man's Chest"],
 [428, "Summer '04"],
 [483, "Wild at Heart"],
 [300, "The Science of Sleep"],
 [198, "To Be or Not to Be"],
 [577, "To Die For"],
 [207, "Dead Poets Society"],
 [317, "Grbavica: The Land of My Dreams"],
 [193, "Star Trek: Generations"],
 [600, "Full Metal Jacket"],
 [35, "The Simpsons Movie"],
 
 [513, "Fire"],
 [587, "Big Fish"],

 [465, "36 Fillette"],
 [79, "Hero"],
 [78, "Blade Runner"],

 [128, "Princess Mononoke"],
 [157, "Star Trek III: The Search for Spock"],
 [256, "Antoine and Colette"],
 [576, "The Wild Bunch"],
 [162, "Edward Scissorhands"],
 [302, "Swimming Pool"],
 [349, "Cockles and Muscles"],
 [291, "Riding Giants"],
 [409, "The English Patient"],
 [163, "Ocean's Twelve"],
 [241, "Natural Born Killers"],
 [507, "Killing Zoe"],
 [363, "Head-On"],
 [421, "The Life Aquatic with Steve Zissou"],
 [252, "Willy Wonka & the Chocolate Factory"],
 [255, "Stolen Kisses"],
 [424, "Schindler's List"],
 [459, "Sissi: The Fateful Years of an Empress"],
 [346, "Seven Samurai"],
 [406, "La Haine"],
 [237, "Young Adam"],
 [108, "Three Colors: Blue"],
 [138, "Dracula"],
 [380, "Rain Man"],
 [492, "Being John Malkovich"],
 [249, "The War of the Roses"],
 [155, "The Dark Knight"],
 [248, "Pocketful of Miracles"],
 [25, "Jarhead"],
 [464, "As It Is in Heaven"],
 [557, "Spider-Man"],
 [267, "Live Flesh"],
 [86, "The Elementary Particles"],
 [415, "Batman & Robin"],
 [592, "The Conversation"],
 [11, "Star Wars"],

 [59, "A History of Violence"],
 [564, "The Mummy"],
 [435, "The Day After Tomorrow"],
 [294, "Desert Hearts"],
 [211, "Berlin is in Germany"],
 [134, "O Brother, Where Art Thou?"],
 [316, "Grill Point"],
 [403, "Driving Miss Daisy"],
 [396, "Who's Afraid of Virginia Woolf?"],
 [392, "Chocolat"],
 [147, "The 400 Blows"],
 [332, "Inspector Gadget"],
 [297, "Meet Joe Black"],
 [93, "Anatomy of a Murder"],

 [203, "Mean Streets"],
 [457, "Sissi"],
 [81, "Nausicaä of the Valley of the Wind"],
 [488, "The African Queen"],
 [594, "The Terminal"],
 [270, "Wir sagen Du! Schatz."],
 
 [247, "The Killing"],
 [334, "Magnolia"],

 [21, "The Endless Summer"],
 [458, "Sissi: The Young Empress"],
 [248, "Pocketful of Miracles"],
 [548, "Rashomon"],

 [197, "Braveheart"],

 [467, "The Hole"],
 
 [114, "Pretty Woman"],
 
 [539, "Psycho"],
 [530, "A Grand Day Out"],
 [236, "Muriel's Wedding"],
 [98, "Gladiator"],
 [319, "True Romance"],

 [70, "Million Dollar Baby"],
 [244, "King Kong"],
 [590, "The Hours"],
 [252, "Willy Wonka & the Chocolate Factory"],
 [129, "Spirited Away"],
 [91, "Land Without Bread"],

 [281, "Strange Days"],
 [111, "Scarface"],
 [497, "The Green Mile"],
 [440, "Aliens vs Predator: Requiem"],

 [426, "Vertigo"],
 [85, "Raiders of the Lost Ark"],
 [321, "Mambo Italiano"],

 [591, "The Da Vinci Code"],
 [117, "The Untouchables"],
 [204, "The Wages of Fear"],
 [140, "Bad Education"],
 [216, "Ali: Fear Eats the Soul"],
 [411, "The Chronicles of Narnia: The Lion, the Witch and the Wardrobe"],
 [336, "Duck, You Sucker"],
 [314, "Catwoman"],
 [124, "No End"],
 [578, "Jaws"],
 [238, "The Godfather"],
 [272, "Batman Begins"],
 [329, "Jurassic Park"],
 [96, "Beverly Hills Cop II"],
 [452, "The Idiots"],
 [431, "Cube"],
 [364, "Batman Returns"],
 [268, "Batman"],
 [224, "Man of Marble"],
 [64, "Talk to Her"],
 [542, "The Crime of Padre Amaro"],
 [107, "Snatch"],
 [196, "Back to the Future Part III"],
 [489, "Good Will Hunting"],
 [511, "The Promised Land"],
 [2, "Ariel"],
 [102, "Open Hearts"],

 [292, "Dave Chappelle's Block Party"],
 [422, "8½"],
 [445, "Caché"],
 [112, "Italian for Beginners"],
 [549, "Basquiat"],
 [340, "Everything is Illuminated"]]

 fullArray2 = [
 [700, "Octopussy"],
 [701, "Our Hospitality"],
 [702, "A Streetcar Named Desire"],
 [703, "Annie Hall"],
 [704, "A Hard Day's Night"],
 [705, "All About Eve"],
 [706, "Effi Briest"],
 [707, "A View to a Kill"],
 [708, "The Living Daylights"],
 [709, "Licence to Kill"],
 [710, "GoldenEye"],
 [711, "Finding Forrester"],
 [712, "Four Weddings and a Funeral"],
 [713, "The Piano"],
 [714, "Tomorrow Never Dies"],
 [742, "Together"],
 [743, "Train Birds"],
 [744, "Top Gun"],
 [745, "The Sixth Sense"],
 [746, "The Last Emperor"],
 [747, "Shaun of the Dead"],
 [750, "Murder She Said"],
 [751, "Murder at the Gallop"],
 [752, "V for Vendetta"],
 [753, "Faces"],
 [754, "Face/Off"],
 [755, "From Dusk Till Dawn"],
 [756, "Fantasia"],
 [757, "Murder Most Foul"],
 [758, "Murder Ahoy"],
 [759, "Gentlemen Prefer Blondes"],
 [760, "The Mad Adventures of Rabbi Jacob"],
 [761, "The Wing or The Thigh?"],
 [762, "Monty Python and the Holy Grail"],
 [763, "Braindead"],
 [764, "The Evil Dead"],
 [765, "Evil Dead II"],
 [766, "Army of Darkness"],
 [767, "Harry Potter and the Half-Blood Prince"],
 [768, "From Hell"],
 [769, "GoodFellas"],
 [770, "Gone with the Wind"],
 [771, "Home Alone"],
 [772, "Home Alone 2: Lost in New York"],
 [773, "Little Miss Sunshine"],
 [774, "Workers Leaving the Lumière Factory"],
 [775, "A Trip to the Moon"],
 [776, "The Rules of the Game"],
 [777, "Grand Illusion"],
 [778, "Monsieur Hulot's Holiday"],
 [779, "Vampyr"],
 [780, "The Passion of Joan of Arc"],
 [781, "Wintersleepers"],
 [782, "Gattaca"],
 [783, "Gandhi"],
 [784, "Kolya"],
 [785, "To Whom Does the World Belong?"],
 [786, "Almost Famous"],
 [787, "Mr. & Mrs. Smith"],
 [788, "Mrs. Doubtfire"],
 [789, "Closely Watched Trains"],
 [790, "The Fog"],
 [791, "The Fog"],
 [792, "Platoon"],
 [793, "Blue Velvet"],
 [794, "The Omen"],
 [795, "City of Angels"],
 [796, "Cruel Intentions"],
 [797, "Persona"],
 [798, "Annaluise & Anton"],
 [799, "Annaluise & Anton"],
 [800, "The Young and the Damned"],
 [801, "Good Morning, Vietnam"],
 [802, "Lolita"],
 [803, "Night and Fog"],
 [804, "Roman Holiday"],
 [805, "Rosemary's Baby"],
 [806, "The Omen"],
 [807, "Se7en"],
 [808, "Shrek"],
 [809, "Shrek 2"],
 [810, "Shrek the Third"],
 [811, "Silent Running"],
 [812, "Aladdin"],
 [813, "Airplane!"],
 [814, "An American Werewolf in London"],
 [815, "Animal Farm"],
 [816, "Austin Powers: International Man of Mystery"],
 [817, "Austin Powers: The Spy Who Shagged Me"],
 [818, "Austin Powers in Goldmember"],
 [819, "Sleepers"],
 [820, "JFK"],
 [821, "Judgment at Nuremberg"],
 [822, "The Music Room"],
 [823, "Jin-Roh: The Wolf Brigade"],
 [824, "Moulin Rouge!"],
 [825, "Playing by Heart"],
 [826, "The Bridge on the River Kwai"],
 [827, "Diabolique"],
 [828, "The Day the Earth Stood Still"],
 [829, "Chinatown"],
 [830, "Forbidden Planet"],
 [831, "This Island Earth"],
 [832, "M"],
 [833, "Umberto D."],
 [834, "Underworld: Evolution"],
 [835, "F.P.1 Doesn't Answer"],
 [836, "Barren Lives"],
 [837, "Videodrome"],
 [838, "American Graffiti"],
 [839, "Duel"],
 [840, "Close Encounters of the Third Kind"],
 [841, "Dune"],
 [842, "The Assassination of Richard Nixon"],
 [843, "In the Mood for Love"],
 [844, "2046"],
 [845, "Strangers on a Train"],
 [846, "The X Files"],
 [847, "Willow"],
 [848, "Dragonslayer"],
 [849, "Krull"],
 [850, "A Christmas Story"],
 [851, "Brief Encounter"],
 [852, "It Happened in Broad Daylight"],
 [853, "Enemy at the Gates"],
 [854, "The Mask"],
 [855, "Black Hawk Down"],
 [856, "Who Framed Roger Rabbit"],
 [857, "Saving Private Ryan"],
 [858, "Sleepless in Seattle"],
 [859, "Dangerous Liaisons"],
 [860, "WarGames"],
 [861, "Total Recall"],
 [862, "Toy Story"],
 [863, "Toy Story 2"],
 [864, "Cool Runnings"],
 [865, "The Running Man"],
 [866, "Finding Neverland"],
 [867, "Sliver"],
 [868, "Tsotsi"],
 [869, "Planet of the Apes"],
 [870, "Dolls"],
 [871, "Planet of the Apes"],
 [872, "Singin' in the Rain"],
 [873, "The Color Purple"],
 [874, "A Man for All Seasons"],
 [875, "Shanghai Express"],
 [877, "Scarface"],
 [878, "The Punch Bowl"],
 [879, "Hook"],
 [880, "Antonia's Line"],
 [881, "A Few Good Men"],
 [882, "Flussfahrt mit Huhn"],
 [883, "Coffee and Cigarettes"],
 [884, "Crash"],
 [885, "The Docks of New York"],
 [886, "The Cincinnati Kid"],
 [887, "The Best Years of Our Lives"],
 [888, "The Flintstones"],
 [889, "The Flintstones in Viva Rock Vegas"],
 [890, "Brother of Sleep"],
 [891, "All the President's Men"],
 [892, "Delicatessen"],
 [893, "Policewoman"],
 [894, "Willenbrock"],
 [895, "Andrei Rublev"],
 [896, "The World of Apu"],
 [897, "Aparajito"],
 [898, "Birdman of Alcatraz"],
 [899, "Broken Blossoms"],
 [900, "Bringing Up Baby"],
 [901, "City Lights"],
 [902, "The City of Lost Children"],
 [903, "Cool Hand Luke"],
 [904, "The Pride of the Firm"],
 [905, "Pandora's Box"],
 [906, "The Three from the Filling Station"],
 [907, "Doctor Zhivago"],
 [908, "Schnitzel Paradise"],
 [909, "Meet Me in St. Louis"],
 [910, "The Big Sleep"],
 [911, "The Bank Dick"],
 [912, "The Thomas Crown Affair"],
 [913, "The Thomas Crown Affair"],
 [914, "The Great Dictator"],
 [916, "Bullitt"],
 [917, "Mother India"],
 [918, "Blind Date"],
 [919, "Blood: The Last Vampire"],
 [920, "Cars"],
 [921, "Cinderella Man"],
 [922, "Dead Man"],
 [923, "Dawn of the Dead"],
 [924, "Dawn of the Dead"],
 [925, "Do the Right Thing"],
 [926, "Galaxy Quest"],
 [927, "Gremlins"],
 [928, "Gremlins 2: The New Batch"],
 [929, "Godzilla"],
 [930, "The Great Love"],
 [931, "Don't Look Now"],
 [932, "The Murderers Are Among Us"],
 [933, "Hot Summer"],
 [934, "Rififi"],
 [935, "Dr. Strangelove"],
 [936, "The Pink Panther"],
 [938, "For a Few Dollars More"],
 [939, "The Jazz Singer"],
 [940, "The Lady Vanishes"],
 [941, "Lethal Weapon"],
 [942, "Lethal Weapon 2"],
 [943, "Lethal Weapon 3"],
 [944, "Lethal Weapon 4"],
 [946, "Letter from an Unknown Woman"],
 [947, "Lawrence of Arabia"],
 [948, "Halloween"],
 [949, "Heat"]]

fullList = []
 fullArray.map{|element| fullList.push(element[0])}
 fullArray2.map{|element| fullList.push(element[0])}


i = 0
allObjects = []
while i < 381

eachObject = {}
response = HTTParty.get("https://api.themoviedb.org/3/movie/#{fullList[i]}?api_key=84e4d1652d357878897c1101c5c35ea9")

eachObject = {
  title: response['title'],
  genre: response['genres'][0]["name"], 
  description: response['overview'], 
  thumbnail: response['poster_path'],
  backdrop: response['backdrop_path'],
  rating: response['vote_average'],
  runtime: response['runtime'],
  release_date: response['release_date'],
  movie_link: response['video']}


allObjects << eachObject
#Movie.create(title: response['title'], genre: response['genre'], description: response['overview'], thumbnail: response['poster_path'], backdrop: response['backdrop_path'], rating: response['vote_average'], runtime: response['runtime'], release_date: response['release_date'], movie_link: response['video'])
i+=1
response.to_json if response.code == 200
end

Movie.create(
title: "The Invention of Lying",
genre: "Comedy", 
description: "A comedy set in a world where no one has ever lied, until a writer seizes the opportunity for personal gain. It's a world where everyone tells the truth - and just about anything they're thinking. Mark Bellison is a screenwriter, about to be fired.", 
thumbnail: "https://flxt.tmsimg.com/assets/p182956_p_v10_aa.jpg", 
backdrop: "https://www.slantmagazine.com/wp-content/uploads/2009/09/inventionoflying.jpg", 
rating: 6.4, 
runtime: 100, 
release_date: "2009", 
movie_link:"https://www.youtube.com/watch?v=FkrlYQy_zK8&t=150s")

Movie.create(
title: "Millennium Actress",
genre: "Drama", 
description: "When the legendary Ginei Studios shuts down, filmmaker Genya Tachibana and his assistant are tasked with interviewing its reclusive star, Chiyoko Fujiwara, who had retired from the spotlight 30 years prior. As she recounts her career, Genya and his crew are literally pulled into her memories where they witness her chance encounter with a mysterious man on the run from the police. Despite never knowing his name or his face, Chiyoko relentlessly pursues that man in a seamless blend of reality and memory.", 
thumbnail: "https://i.pinimg.com/originals/c0/f2/d7/c0f2d780317aabe0a521c61b6a5cfff2.jpg", 
backdrop: "https://image.tmdb.org/t/p/w1280/h0cP6cGf3uIHQuuxh6NSzeWUUf2.jpg", 
rating: 10, 
runtime: 84, 
release_date: "2001", 
movie_link:"https://www.youtube.com/watch?v=3KasqdsIaIs&t=381s")

Movie.create(
title: "Trigun: Badlands",
genre: "Drama", 
description: "A gunfighter with a strict no-kill policy, Vash the Stampede arrives in a town full of bounty hunters competing to collect the reward for catching a robber he saved 20 years ago.", 
thumbnail: "https://m.media-amazon.com/images/M/MV5BNzMzNTJjMTUtNDZjYy00ZWY5LWI1NGMtNTIzMjJjN2Y3MjNkXkEyXkFqcGdeQXVyNjc3OTE4Nzk@._V1_.jpg", 
backdrop: "https://media2.fdncms.com/sacurrent/imager/trigun-badlands-rumble-gekijouban-trigun/u/original/2242478/1171437.jpg", 
rating: 10, 
runtime: 90, 
release_date: "2010", 
movie_link:"https://www.youtube.com/watch?v=nyAVXzn3dL4")

Movie.create(
title: "Ms:DoubtFire",
genre: "Comedy", 
description: "After a bitter divorce, an actor disguises himself as a female housekeeper to spend time with his children held in custody by his former wife.", 
thumbnail: "https://m.media-amazon.com/images/I/71CpVJxd1mL._SL1500_.jpg", 
backdrop: "https://i.guim.co.uk/img/media/2da7f075b680cfda82204b9af98028c3abf751a8/0_28_3360_2015/master/3360.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=4a0f03f4d12d25722cc31939646a2373", 
rating: 10, 
runtime: 123, 
release_date: "1993", 
movie_link:"https://www.youtube.com/watch?v=SucV6rhCuMA")

Movie.create(
title: "Dragon Ball Super - Broly",
genre: "Documentary", 
description: "Goku and Vegeta encounter Broly, a Saiyan warrior unlike any fighter they've faced before.", 
thumbnail: "https://i.pinimg.com/originals/c8/52/a3/c852a3c000ae14989306ee055379bea6.jpg", 
backdrop: "https://i.pinimg.com/originals/d2/8e/0a/d28e0a6e5e421f9d27d0f4dcd13784a3.jpg", 
rating: 10, 
runtime: 101, 
release_date: "2018", 
movie_link:"https://www.youtube.com/watch?v=nCt5z-mnHZY")


allObjects.map{|eachObject|  
Movie.create(
title: eachObject[:title],
genre: eachObject[:genre], 
description: eachObject[:description], 
thumbnail: eachObject[:thumbnail], 
backdrop: eachObject[:backdrop], 
rating: eachObject[:rating], 
runtime: eachObject[:runtime], 
release_date: response[:release_date], 
movie_link: response[:movie_link])}


avatar = ["https://cdn.pixabay.com/photo/2020/10/11/18/45/cow-5646719__480.png", 
"https://cdn.pixabay.com/photo/2021/01/08/10/02/monkey-5899489__480.png",
"https://cdn4.iconfinder.com/data/icons/animal-2-1/100/animal-19-512.png",
"https://images.clipartlogo.com/files/istock/previews/1026/102672691-animal-emotion-avatar-vector-icon.jpg",
"https://library.kissclipart.com/20180917/xzw/kissclipart-animal-avatar-icon-clipart-owl-computer-icons-gian-89b9976cf9dcaaa2.png",
"https://cdn.imgbin.com/3/16/6/imgbin-geometric-wolf-avatar-XKYvCD5J4tGSSn5pAtkWgmA9s.jpg",
"https://cdn.imgbin.com/13/1/19/imgbin-giant-panda-dog-cat-avatar-fox-animal-tag-Uqq3EYaSDG4tK4xae8uhP1FvQ.jpg",
"https://png.pngtree.com/png-clipart/20191121/original/pngtree-cute-dog-and-hat-avatar-with-a-yellow-background-png-image_5147708.jpg",
"https://png.pngtree.com/png-clipart/20200224/original/pngtree-cute-pug-avatar-with-a-yellow-background-png-image_5205701.jpg",
"https://image.freepik.com/free-vector/illustration-cute-pug-avatar_79416-109.jpg",
"https://images.freeimg.net/rsynced_images/puppy-on-green.jpg",
"https://media.istockphoto.com/vectors/cute-dogicon-vector-id477760047?b=1&k=20&m=477760047&s=612x612&w=0&h=7Jamig6T0YVAIWctbQSElrsp3muuJcLkLQmR7w-GMb4=",
"https://png.pngtree.com/png-vector/20201224/ourlarge/pngtree-cute-animal-cartoon-mouse-avatar-vector-png-image_2591554.jpg",
"https://image.freepik.com/free-vector/cute-baby-koala-wild-african-animal-avatar-portrait-illustration-isolated-white-design-baby-print-postcard-clothing-banner-clipart-fun_456865-24.jpg",
"https://st.depositphotos.com/1738826/1265/i/600/depositphotos_12658018-stock-photo-cute-cow-head-cartoon.jpg"
]


5.times do
    profile_img = avatar.sample
    Profile.create(user_name: Faker::Name.first_name, profile_img: profile_img)
end

300.times do 
    movie = Movie.all.sample
    profile = Profile.all.sample
    MovieSelection.create(
        movie_id: movie.id,
        profile_id: profile.id
    )
end

puts "✅ Done seeding!"
