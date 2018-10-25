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
    }
]

7.times do
  User.create(name: Faker::Internet.username, email: Faker::Internet.email, address: Faker::Address.street_address, password: 'password', password_confirmation: 'password')
  3.times do
    item = items_arr.sample
    User.last.items.build(name: item.keys.first, description: item[item.keys.first][:description], price: item[item.keys.first][:price]).save
    Item.last.images.build(url: item[item.keys.first][:url]).save
  end
  if User.all.count > 1
    Item.last.rentings.build(user_id:User.all.count-1,proposed_duration: [0,0,0,1,1,2,3,4,5].sample).calculate_cost
    Review.create(content: Faker::FamousLastWords.last_words, rating:[1,2,3,4,5].sample, renting_id:Renting.last.id)
  end
end
