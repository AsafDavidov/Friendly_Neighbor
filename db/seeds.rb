#Remove propsed duration validation
#TODO: FULL SEED FOR SCIENCE FAIR
#then re-insert after seeding
items_arr = [
    {
      "Leaf Blower" => {
          price: Random.rand(1..25),
          url: "https://cdn.thewirecutter.com/wp-content/uploads/2017/08/leafblowers-lowres-0166-1.jpg",
          description: "Blows everybody away"
        }
    },
    {
      "Ladder" => {
        price: Random.rand(1..25),
        url: "https://hardwarestore.sg/wp-content/uploads/2016/06/alum-single-side-a-ladder-4-steps.jpg",
        description: "Very Tall"
      }
    },
    {
      "Hammer" => {
          price: Random.rand(1..25),
          url: "https://asrentall.com/wp-content/uploads/2013/03/sledge-hammer.jpg",
          description: "No nail stands a chance"
        }
    },
    {"A Bible" => {
        price: Random.rand(1..25),
        url: "http://baptistmessage.com/wp-content/uploads/2017/04/holy-bible.jpg",
        description: "Great comeback story"
      }
    },
    {"Snow Blower" => {
        price: Random.rand(1..25),
        url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Honda_hs1136_snowblower.jpg/1200px-Honda_hs1136_snowblower.jpg",
        description: "Useful in the winter times."
      }
    },
    {"Tool Box" => {
        price: Random.rand(1..25),
        url: "http://afflictor.com/wp-content/uploads/2010/11/800px-20060513_toolbox-Per-Erik-Strandberg.jpg",
        description: "All the tools you would need"
      }
    },
    {"Toilet Snake" => {
        price: Random.rand(1..25),
        url: "https://images.homedepot-static.com/productImages/7db66980-9d28-4f40-923e-9dab4e3522d7/svn/ridgid-plumbing-snakes-augers-56658-64_1000.jpg",
        description: "No need to call the plumber"
      }
    },
    {"Power Drill" => {
        price: Random.rand(1..25),
        url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/MakitaISD3.0.JPG/1200px-MakitaISD3.0.JPG",
        description: "Powered drill"
      }
    },
    {"Nintendo 3DS" => {
        price: Random.rand(1..25),
        url: "http://i.imgur.com/PEVSXHE.jpg",
        description: "3DS with some games"
      }
    },
    {"Bread Maker" => {
        price: Random.rand(1..25),
        url: "http://smallnotebook.org/wp-content/uploads/Sunbeam-breadmaker.jpg",
        description: "When you are trying to get that perfect sourdough"
      }
    },
    {"Subwoofer" => {
        price: Random.rand(1..25),
        url: "http://i283.photobucket.com/albums/kk319/TheJetTurbo/Picture082.jpg",
        description: "pump it up!! comes with all cables, works great"
      }
    },
    {"Car Jack" => {
        price: Random.rand(1..25),
        url: "http://www.4wdthunder.net/Matt/Blackhawk%20S-4/Outside%20Saddle%20Down.jpg",
        description: "a little rusty, but a trusty companion of mine for years of working on cars."
      }
    },
    {"Chainsaw" => {
        price: Random.rand(1..25),
        url: "http://media.oregonlive.com/clackamascounty_impact/photo/chainsawjpg-a286b2c6ab80f3cb.jpg",
        description: "powered by kerosene or electricity, does not come with required safety gear"
      }
    },
    {"Dog" => {
        price: Random.rand(1..25),
        url: "https://www.dobermantalk.com/attachments/doberman-rescue/19973d1357156690-3-separate-dobermans-craigslist-washington-4320_lunashome.jpg",
        description: "spend some time with my dog!!! he is very nice :)"
      }
    },
    {"Trampoline" => {
        price: Random.rand(1..25),
        url: "http://i2.cdn.turner.com/cnn/dam/assets/140620113103-trampoline-craigslist-story-top.jpg",
        description: "my kids never use the damn thing anymore!! Might as well let someone use it. you can come to my front yard and use it with your kids if you like."
      }
    },
    {"Street bike" => {
        price: Random.rand(1..25),
        url: "https://i.redd.it/dsntcnr5et711.jpg",
        description: "great for urban commute!! great condition. seat is kind of high"
      }
    },
    {"Ice skates" => {
        price: Random.rand(1..25),
        url: "https://di2ponv0v5otw.cloudfront.net/posts/2018/01/08/5a53bb4236b9ded4950145da/s_5a53bb9a5521be311a014255.jpg",
        description: "dont get scammed trying to rent these for ridiculous prices at bryant park. size 7 1/2 womens"
      }
    },
    {"Clown" => {
        price: Random.rand(1..25),
        url: "https://thumbs.dreamstime.com/z/funny-clown-big-glasses-14956082.jpg",
        description: "kids love me, great for birthday parties for young children. i know lots of magic tricks and jokes, including some that parents will like"
      }
    },
    {"Sewing Machine" => {
        price: Random.rand(1..25),
        url: "https://lowcountryjoe.com/wp-content/uploads/2018/07/used-sailrite-sewing-machine-craigslist.jpg",
        description: "works great.... you can use my thread (lots of colors) and you can use the 'How To' guide that came with it"
      }
    },
    {"Shovel for dirt" => {
        price: Random.rand(1..25),
        url: "https://mobileimages.lowes.com/product/converted/755625/755625034793.jpg",
        description: "easy to use. no need to get the police involved"
      }
    },
    {"Children's books" => {
        price: Random.rand(1..25),
        url: "https://hiraganamama.files.wordpress.com/2011/01/dscf5035.jpg",
        description: "you can borrow as many as you like. most are in japanese but many are in english too. great for kids just learning to read"
      }
    },
    {"Painting tools." => {
        price: Random.rand(1..25),
        url: "http://4.bp.blogspot.com/-I-lO8LfZ8iQ/VWm26_nUKKI/AAAAAAAAIwU/etZ1eA3sHVQ/s1600/rinse%2Band%2Bsqueeze%2Bout%2Bwater.jpg",
        description: "everything you would need to paint a room or a piece of furniture: brushes, rollers, poles, paint wells, etc. just ask me"
      }
    }
]
itemindex ||= 0
7.times do
  User.create(name: Faker::Internet.username, email: Faker::Internet.email, address: Faker::Address.street_address, password: 'password', password_confirmation: 'password')
  3.times do
    item = items_arr[itemindex]
    User.last.items.build(name: item.keys.first, description: item[item.keys.first][:description], price: item[item.keys.first][:price]).save
    Item.last.images.build(url: item[item.keys.first][:url]).save
    itemindex += 1
  end
  if User.all.count > 1
    Item.last.rentings.build(user_id:User.all.count-1,proposed_duration: [0,0,0,1,1,2,3,4,5].sample).calculate_cost
    Review.create(content: Faker::FamousLastWords.last_words, rating:[1,2,3,4,5].sample, renting_id:Renting.last.id)
  end
end
