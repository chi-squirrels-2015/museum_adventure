miriam = Artist.create(name: "Miriam Moore", birthdate: 19830121, bio: "Cool lady")
art_institute = Museum.create(name: "The Art Institute", location: "Chicago")
sketch_collection = Collection.create(name: "Sketch Collection", museum: art_institute)

Artwork.create(
  collection: sketch_collection,
  artist: miriam,
  date: 20150101,
  dimensions: "10x10",
  title: "The best artwork ever",
  url: "http://static.wixstatic.com/media/9d174d_9352c57b5e1c9077ff0da01339180488.jpg_srz_p_1038_957_75_22_0.50_1.20_0.00_jpg_srz"
  )

miriam_event = Event.create(museum: art_institute, name: "YAY! I Have A Show!!!", date: 20150210, description: "Miriam's Debut at The Art Institute")

jane = User.create(name: "Jane Kim", email: "jane@pizza.com")
matthew = User.create(name: "Matthew DeCarlo", email: "matthew@pizza.com")

Rsvp.create(event: miriam_event, first_name: "Jane", last_name: "Kim", email: "jane@mail.com")
Rsvp.create(event: miriam_event, first_name: "Matthew", last_name: "DeCarlo", email: "matthew@mail.com")
