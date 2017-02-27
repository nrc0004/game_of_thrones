# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

stark = House.create(
  name: "Stark",
  words: "Winter is Coming",
  sigil_url: "http://i.imgur.com/3Lq0chp.jpg",
  seat: "Winterfell"
)
targaryen = House.create(
  name: "Targaren",
  words: "Blood and Fire",
  sigil_url: "http://i.imgur.com/e0C4gL2.png",
  seat: "Dragonstone"
)
lannister = House.create(
  name: "Lannister",
  words: "Hear me Roar",
  sigil_url: "http://i.imgur.com/rd2Vkzr.png",
  seat: "Casterly Rock"
)
baratheon = House.create(
  name: "Baratheon",
  words: "Ours is the Fury",
  sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG/revision/latest?cb=20161206005433",
  seat: "Storms End"
)
greyjoy = House.create(
  name: "Greyjoy",
  words: "We do not sow",
  sigil_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20160312122204",
  seat: "Pyke"
)
martell = House.create(
  name: "Martell",
  words: "Unbowed, Unbent, Unbroken",
  sigil_url: "http://awoiaf.westeros.org/images/6/60/House_Martell.svg",
  seat: "Dorn"
)

stark.characters.create( name:"Ned Stark", photo_url: "", status: "dead")
stark.characters.create( name:"Arya Stark", photo_url: "", status: "dead...inside")
stark.characters.create( name:"Sansa Stark", photo_url: "", status: "alive-ish")

targaryen.characters.create( name:"Danerys", photo_url: "", status: "alive")

lannister.characters.create( name:"Jaime", photo_url: "", status: "Alive")
lannister.characters.create( name:"Cersei", photo_url: "", status: "Alive")

baratheon.characters.create( name:"Robert", photo_url: "", status: "Dead")
baratheon.characters.create( name:"Stannis", photo_url: "", status: "Dead")
baratheon.characters.create( name:"Renly", photo_url: "", status: "Dead")

greyjoy.characters.create( name:"Yara/Asha", photo_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/a/ae/Yara.jpg/revision/latest?cb=20130408175255", status: "Alive")
greyjoy.characters.create( name:"Theon", photo_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/a/ae/Yara.jpg/revision/latest?cb=20130408175255", status: "Alive")

martell.characters.create( name:"Oberyn", photo_url: "", status: "Dead")
martell.characters.create( name:"Lewyn", photo_url: "", status: "Alive")
