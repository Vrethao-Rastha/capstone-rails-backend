5.times do
  Blogs.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
7.times do
  DcRnews.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end
7.times do
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
5.times do
MainStory.create({
  title: Faker::Fallout.character,
  body: Faker::Fallout.faction,
  picture: Faker::Fallout.quote,
  })
end
1.times do
  DcrComment.create({
    name: 'test',
    comment: 'test',
    avatar: 'test',
    storyId: '2'
    })
end
1.times do
  PublikComment.create({
    name: 'test',
    comment: 'test',
    avatar: 'test',
    storyId: '2'
    })
end
1.times do
  PiperComment.create({
    name: 'test',
    comment: 'test',
    avatar: 'test',
    storyId: '2'
    })
end
1.times do
MainStoryComment.create({
  name: 'test',
  comment: 'test',
  avatar: 'test',
  storyId: '2'
  })
end
User.create({
  name: 'Valkryie',
  email: 'V@lkryie.Vault111',
  avatar: '',
  password: 'asdf',
  admin: 'true'
})
User.create({
    name: 'Ronnie',
    email: 'Sh@w.theCastle',
    avatar: 'https://i.ytimg.com/vi/feZTsPo106o/maxresdefault.jpg',
    password: 'asdf',
    admin: 'false'
  })
User.create({
      name: 'Preston',
      email: 'G@rvey.theCastle',
      avatar: '',
      password: 'asdf',
      admin: 'false'
    })
User.create({
        name: 'Heather',
        email: 'C@ssadin.Vault111',
        avatar: '',
        password: 'asdf',
        admin: 'false'
        })
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-1.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-2.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-3.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-4.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-5.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-6.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-7.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-8.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-9.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-11.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-13.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-14.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-15.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-16.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-17.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-18.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-19.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-20.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-21.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-22.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-23.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-24.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-25.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-26.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-27.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-28.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-28.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-30.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-31.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-32.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-33.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-34.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-35.jpg"}) end
1.times do
  Scroller.create({pic: "../images/Fallout-4-Concept-Art-36.jpg"}) end
