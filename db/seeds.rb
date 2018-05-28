5.times do
  Headlines.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
5.times do
  Blogs.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
5.times do
  DcRnews.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
5.times do
  PublikNews.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
5.times do
  PiperNews.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
