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
      email: "ann@example.com",
      password: "123456",
      over_18: true
    },
    {
      email: "bob@example.com",
      password: "123456",
      over_18: true
    }
  ]
)

ndes_attributes = [
  {
    name: "Conversation With A Serial Killer In A High-level Security Prison",
    description: "This cannibalistic psychopath can derange your mind and make your commit suicide. Are you ready for this mental struggle that might push you to the brink of despair?",
    drama: 4.5,
    city: "London",
    location: "Classified Information - this secret location will be revealed once your payment has been made.",
    price: 10000,
    participant_number: 1,
    user: User.all.sample
    # image:

  },
  {
    name: "Playing Russian Roulette with ex-KGB agents",
    description: "Make sure that you drink enough vodka before playing.",
    drama: 3.8,
    city: "Ванавара(Vanavara).A private village run by Russian mafias",
    location: "Somewhere in Siberia. Used to be a gulag.",
    price: 1000,
    participant_number: 3,
    user: User.all.sample
    # image:
  },
   {
    name: "Infiltrate ISIS",
    description: "Pretending to be an ISIS solider for a day before potential extraction by the CIA. Prerequisites: thick beard, plastic surgery, fluency in Arabic, life insurance, and memorization of every sentence from the Koran.",
    drama: 4.9,
    city: "Hajin, Syria",
    location: "Classified Information - the location is subject to change depending on the political situation.",
    price: 250000,
    participant_number: 5,
    user: User.all.sample
    # image:
  },
   {
    name: "Hanging out with lions and lioness in Tanzania",
    description: "Lions have killed more than 563 Tanzanians since 1990 and injured at least 308. Ready to escape lion hunt?",
    drama: 4.5,
    city: "Arusha,Tanzania",
    location: "Somewhere in the safari",
    price: 8000,
    participant_number: 10,
    user: User.all.sample
    # image:
  },
   {
    name: "Kayaking In A River Of Crocodiles",
    description: "The most frightening kayak trip of your life, if you survive.",
    drama: 3.2,
    city: " Colombo, Sri Lanka",
    location: "Elephant Rock",
    price: 6500,
    participant_number: 22,
    user: User.all.sample
    # image:
  }
]


Nde.create!(ndes_attributes)

