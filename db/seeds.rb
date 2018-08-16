# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
Nde.delete_all
User.delete_all

User.create!(
  [
    {
      email: "depressedguy1@gmail.com",
      password: "123456",
      over_18: true
    },
    {
     email: "schopenhauer@hotmail.com",
     password: "123456",
     over_18: true
   }
 ]
 )

  one = Nde.create!(
    name: "Conversation With A Serial Killer In A High-level Security Prison",
    description: "This cannibalistic psychopath can derange your mind and make your commit suicide. Are you ready for this mental struggle that might push you to the brink of despair?",
    drama: 4,
    city: "London, UK",
    location: "Indoors",
    price: 10000,
    participant_number: 1,
    user: User.all.sample
  )

  one.remote_photo_url = "http://res.cloudinary.com/dm8awkcp1/image/upload/v1534257311/uqlisgqdumxlvz7g321q.png"
  one.save!

  two = Nde.create!(
    name: "Playing Russian Roulette with ex-KGB agents",
    description: "Set in an infamous Gulag camp, Vorkutlag is now run by some Russian mafias. Make sure that you drink enough vodka before playing.",
    drama: 3,
    city: "Воркута, Russia",
    location: "Indoors",
    price: 1000,
    participant_number: 3,
    user: User.all.sample
  )

  two.remote_photo_url = "http://res.cloudinary.com/dm8awkcp1/image/upload/v1534257853/xhlw8r91yjhmsgzlsalb.jpg"
  two.save!

  three = Nde.create!(
    name: "Infiltrate ISIS",
    description: "Pretending to be an ISIS solider for a day before potential extraction by the CIA. Prerequisites: thick beard, plastic surgery, fluency in Arabic, life insurance, and memorization of every sentence from the Koran.",
    drama: 4,
    city: "Hajin, Syria",
     location: "Outdoors",
     price: 250000,
     participant_number: 5,
     user: User.all.sample
  )

  three.remote_photo_url = "http://res.cloudinary.com/dm8awkcp1/image/upload/v1534257866/bnja3gaevsoahd0wbyoz.jpg"
  three.save!

  four = Nde.create!(
     name: "Hanging out with lions and lioness in Tanzania",
     description: "Lions have killed more than 563 Tanzanians since 1990 and injured at least 308. Ready to escape lion hunt?",
     drama: 4,
     city: "Arusha,Tanzania",
     location: "Outdoors",
     price: 8000,
     participant_number: 10,
     user: User.all.sample
  )

  four.remote_photo_url = "http://res.cloudinary.com/dm8awkcp1/image/upload/v1534257879/kbchdvimjzgdkhyz9lsq.jpg"
  four.save!

  five = Nde.create!(
    name: "Kayaking In A River Of Crocodiles",
    description: "The most frightening kayak trip of your life, if you survive.",
    drama: 3,
    city: " Colombo, Sri Lanka",
    location: "Outdoors",
    price: 6500,
    participant_number: 22,
    user: User.all.sample
  )

  five.remote_photo_url = "http://res.cloudinary.com/dm8awkcp1/image/upload/v1534257889/hx9dl9ocgprpa78ifh8r.jpg"
  five.save!

  six = Nde.create!(
    name: "Lying down on Kottbusser Straße At Midnight",
    description: "RIP if criminals catch you.",
    drama: 5,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 1,
    participant_number: 1,
    user: User.all.sample
  )

  six.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415552/jxyehypdaj2hwqtkvskd.jpg"
  six.save!

  seven = Nde.create!(
    name: "Spying On Former Stasi Agents",
    description: "Rumor has it that they still bring nerve agents with them.",
    drama: 5,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 2000,
    participant_number: 5,
    user: User.all.sample
  )

  seven.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415606/eeevm1zlzilzxyijoxef.jpg"
  seven.save!

 eight = Nde.create!(
    name: "Psychedelic Trip to Hell With Shaman",
    description: "Experience hell while taking Ayahuasca with a certified Shaman and a group of adventurers at Monbijou Park. There's a risk that you can become schizophrenic after this near-death trip.",
    drama: 2,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 500,
    participant_number: 10,
    user: User.all.sample
  )

  eight.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415636/d2umikh0xdonrh4a6isd.jpg"
  eight.save!

  nine = Nde.create!(
    name: "BDSM Party at Kit Kat Club",
    description: "Time to test your pain tolerance. Don't forget your safe word unless you want to be beaten to death.",
    drama: 2,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 10,
    participant_number: 150,
    user: User.all.sample
  )

  nine.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415683/d9mpq7hknin2cqq5yzwp.jpg"
  nine.save!

 ten = Nde.create!(
    name: "Feeding Hippo at Berlin Zoo",
    description: "Test your luck. Catch the hippo on a good day and you won't die.",
    drama: 4,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 100,
    participant_number: 5,
    user: User.all.sample
  )

  ten.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415712/mkegzlqvumpwtmkhnlaf.jpg"
  ten.save!

eleven = Nde.create!(
    name: "Running to Potsdam without bringing water, food, or money",
    description: "Distance: 30km",
    drama: 2,
    city: " Berlin, Germany",
    location: "Outdoors",
    price: 10,
    participant_number: 50,
    user: User.all.sample
  )

  eleven.remote_photo_url = "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534415876/y32hyujudgntz5ssefci.png"
  eleven.save!
