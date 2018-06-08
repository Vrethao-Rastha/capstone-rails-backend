5.times do
  Blogs.create({
    title: Faker::Fallout.character,
    body: Faker::Fallout.faction,
    picture: Faker::Fallout.quote,
    })
end

  MainStory.create({
    title: "Corvega Assembly plant goes silent:",
    body: "Its no secret that Jared and his warband own Lexington. A very brave scaver of my acquaintance tell me that she was attempting to sneak into Lexington under the cover of a Rad Storm. She had designs to look for salvage in the old Super Duper Mart. While she was unsuccessful in that (too many Ghouls in the area) she tells me that as the storm passed, she saw a single, blood splattered figure emerge from the assembly plant with a equally macabre painted Mr Handy in tow. She wisely stayed out of sight, and quickly left the city. What happened inside, and who this mysterious figure could be remain a topic for speculation. There can be no question, however, that Lexington has been very quiet of late. Be careful out there, Commonwealthers.",
    picture: "/Corvega.jpg"
    })

  MainStory.create({
    title: "Massacre at University Point",
    body: "Well. I’m honestly at a loss as to how to proceed with this one… University Point. I’m sure most of you know it, the trade settlement on the eastern edge of the city, right on the cusp of the bay. I’m sure most of you also know by now, rumors have been swirling that it was attacked by the institute, and every man, woman and child was slaughtered. At least in part, these rumors are true. Witnesses have come forward to inform me that The Institute was indeed responsible. Reports put the count anywhere from 50 to 500 synth solders surrounded the settlement, and when it was over, there was no one left alive. Keep your loved ones close, readers. There may not be a tomorrow.",
    picture: "/university_point.jpg"
  })
  MainStory.create({
    title: "Return of Nick Valentine",
    body: "I’m sure all my readers know by now, that our Resident detective Nick Valentine went missing a few weeks ago. Well, thanks to the Commonwealth’s newest resident, The Valkyrie, he has come home. According to our own Ellie Perkins, The Valkyrie came into the office looking to hire Nick, only to find that he’d gone missing. On Ellie’s behest, a deal was made and The Valkyrie agreed to find him and bring him back, being directed to the subway station under Boston Commons. The details are sketchy, and Mr Valentine never talks about a case, but one of my informants reports Skinny Malone and his entire gang lay rotting in the corpse of Park Street Subway station. This leads us again to the question: Who is this woman. What does she want? And how is one person leaving a trail of corpses in her wake that would give a Deathclaw a run for its money? More as this story develops.",
    picture: "/meeting_nick.jpg"
  })

PublikNews.create({
    title: "Something bad happened at Arcjet Systems:",
    body: "I know most of my readers never leave the safety of The Wall, but a few will know of the old Arcjet Systems building on the extreme west end of the Commonwealth. While it had been abandoned for years, rumor has it that a scout party for The Brotherhood of Steel engaged with a Synth patrol in or around the facility. Who was involved? What were they fighting over and why? I know its unlikely we will get an answer to these questions, but if you were in the area, or have firsthand knowledge of what happened, please come forward to Diamond City Radio and tell your tale.",
    picture: "/arcjet.jpg"
  })
  PublikNews.create({
      title: "Who is this mysterious Sole Survivor?",
      body: "Reports have been coming my way for several weeks now, a lone figure in a tattered Vault Suit with a Mr Handy and a dog in tow. Normally that wouldn’t be much in the way of news, but for the fact that I’ve had several reports of a person of that description leaving the scenes of numerous… disputes. If this is to be believed, we either have a new Raider Warlord on our hands, or something else less clear. What we do know is that whomever this mysterious person be, they have been reported at or leaving the scenes of what can only be massacres of various Raider Warbands. Who is this person? What do they want, and what do we make of this increasing pile of bodies? Be careful out there, Commonwealthers.",
      picture: "/jamacia.jpg"
    })
    PublikNews.create({
        title: "The Mechanist",
        body: "As always in the Commonwealth, the rumor mill is in full tilt. Reports have come to my attention about ragged bands of yellow robots wandering the ruins of the city, attacking anyone and everyone in their path, while playing holotapes claiming to be saving us from evil. This is something of a contradiction, to be sure. Until we have more to go on, all I can say is keep an eye out, and beware robots in yellow.",
        picture: "/Ada.png"
      })
      PublikNews.create({
          title: "Identity of the Sole Survivor revealed!",
          body: "I’m sure all my readers know by now, that our Resident detective Nick Valentine went missing a few weeks ago. Well, thanks to the Commonwealth’s newest resident, The Valkyrie, he has come home. According to our own Ellie Perkins, The Valkyrie came into the office looking to hire Nick, only to find that he’d gone missing. On Ellie’s behest, a deal was made and The Valkyrie agreed to find him and bring him back, being directed to the subway station under Boston Common. The details are sketchy, and Mr Valentine never talks about a case, but one of my informants reports Skinny Malone and his entire gang lay rotting in the bowls of Park Street Subway station. This leads us again to the question: Who is this woman. What does she want? And how is one person leaving a trail of corpses in her wake that would give a Deathclaw a run for its money? More as this story develops.",
          picture: "/dugout2.jpg"
        })



DcRnews.create({
  title: "New raider faction?",
  body: "A new rumor claims a new raider faction has been spotted in the western reaches of the Commonwealth. Some have suggested, often around a bottle of Bobrov Vodka, that they are the solders of The Valkyrie. They go on to say that she is often seen in the company of that odd Mr Handy, and has a habit of leaving a large body count in her wake as well. While both those facts are undeniably true, I don’t believe this is a fair claim. For one thing, The Valkyrie has, as far as we know, only killed raiders, gunners and triggermen. Our own Piper Wright and Nick Valentine claim, while obviously a little unhinged, they don’t believe she would kill innocent people. At least not without being provoked. No, while the Commonwealth’s newest and most interesting resident may be many things, I don’t believe a raider warlord is one of them.",
  picture: "/robot-armor.jpg"
  })
  DcRnews.create({
    title: "Raider attack on Abernathy Farm",
    body:   "A Minutemen patrol in the area reported a raider attack on Abernathy farm after speaking with Blake Abernathy. He stated that raiders based in USAF Olivia stole half his Tato crop and killed his daughter Mary. Another unfortunate loss in the Commonwealth.",
    picture: "/abernathy.jpg"
    })
    DcRnews.create({
      title: "Super Mutant attack at Greentop Nursery",
      body: "Residents of Greentop Nursery reported a Supermutant raiding party attacked in the middle of the night, stealing several stewpots and old tires, as well as killing all their Rad-chickens and destroying their melon crops. They are believed to still be in the area, possibly attached to the group that has been raiding out of Breakheart Banks.",
      picture: "/greentop.jpg"
      })
      DcRnews.create({
        title: "Stolen Sweetroll?",
        body: "Mama Murphey reports someone stole her Sweetroll. After a thouough interview and investigation, Mama Murphey admitted to be under the influence of Grape Mentats and Jet at the time in question. False alarm.",
        picture: "/Mama_Murphy.png"
        })

User.create({
  name: 'Valkryie',
  email: 'V@lkryie.Vault111',
  avatar: '/Soul_survivor.jpg',
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
      avatar: '/preston.png',
      password: 'asdf',
      admin: 'false'
    })
User.create({
        name: 'Heather',
        email: 'C@ssadin.Vault111',
        avatar: '/dugout2.jpg',
        password: 'asdf',
        admin: 'false'
        })
