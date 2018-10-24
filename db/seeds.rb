Image.create!([
  {item_id: 2, url: "http://cdn.shopify.com/s/files/1/0654/8625/files/SockwithHoles_large.jpg?12552862481556833334"},
  {item_id: 7, url: "https://img-aws.ehowcdn.com/877x500p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/d9714fd66cdc4604801d406a7d1b28e9"},
  {item_id: 5, url: "https://vignette.wikia.nocookie.net/disney/images/6/67/3625885-4897998087-Wall-.jpg/revision/latest?cb=20140429123418"},
  {item_id: 8, url: "https://img.chewy.com/is/image/catalog/103790_MAIN._AC_SL1500_V1524165129_.jpg"},
  {item_id: 7, url: "https://t1.uc.ltmcdn.com/en/images/5/7/5/img_how_to_identify_snake_eggs_properly_8575_600.jpg"},
  {item_id: 9, url: "https://orig00.deviantart.net/7e5e/f/2011/003/5/1/rod___goblin_worker_unit_by_traggey-d36d6va.png"}
])
Item.create!([
  {name: "right sock", description: "pretty good condition but has one hole", user_id: 2, price: "5.0"},
  {name: "robot wife", description: "pretty good condition but has one hole", user_id: 1, price: "6.7"},
  {name: "eeggs", description: "12 of em(snake not included)", user_id: 1, price: "3.0"},
  {name: "Cat Litter", description: "Perfect Condition", user_id: 1, price: "3.0"},
  {name: "Goblin Slave", description: "will make your bed", user_id: 1, price: "15.0"}
])
Renting.create!([
  {item_id: 1, user_id: 3, proposed_duration: 3, final_price: nil},
  {item_id: 2, user_id: 4, proposed_duration: 3, final_price: nil},
  {item_id: 3, user_id: 3, proposed_duration: 3000, final_price: nil},
  {item_id: 4, user_id: 3, proposed_duration: 0, final_price: nil},
  {item_id: 4, user_id: 3, proposed_duration: 3000, final_price: nil},
  {item_id: 5, user_id: 3, proposed_duration: 0, final_price: nil},
  {item_id: 5, user_id: 3, proposed_duration: 0, final_price: nil},
  {item_id: 7, user_id: 4, proposed_duration: 1, final_price: "3.0"},
  {item_id: 2, user_id: 4, proposed_duration: 0, final_price: "0.0"},
  {item_id: 2, user_id: 1, proposed_duration: 0, final_price: "0.0"},
  {item_id: 2, user_id: 1, proposed_duration: 0, final_price: "0.0"},
  {item_id: 2, user_id: 1, proposed_duration: 1, final_price: "5.0"},
  {item_id: 8, user_id: 4, proposed_duration: 0, final_price: "0.0"},
  {item_id: 9, user_id: 4, proposed_duration: 2, final_price: "30.0"}
])
Review.create!([
  {rating: 5, content: "thoroughly pleased", renting_id: 1},
  {rating: 5, content: "could have been better", renting_id: 2},
  {rating: 2, content: "unsatisfactory condiments", renting_id: 3},
  {rating: 5, content: "a delightful brine", renting_id: 4},
  {rating: 2, content: "need less salt", renting_id: 5},
  {rating: 4, content: "needs reprogramming", renting_id: 6},
  {rating: 5, content: "great user experience", renting_id: 7},
  {rating: 5, content: "Kept me warm all night long. I wish that Asaf3 was a bit more gentle with his personal communication style however i understand that he is an immigrant and does not conform to our local social customs. overall i would recommend.", renting_id: 9},
  {rating: 3, content: "Surf music\r\nStylistic origins\t\r\nRock and roll surf culture\r\nCultural origins\tLate 1950s to early 1960s, United States\r\nTypical instruments\t\r\nElectric guitar drums bass saxophones[1]\r\nDerivative forms\t\r\nGarage rock[2] punk rock[3] pop punk[4] garage punk[5][6] skate punk[7]\r\nSubgenres\r\nInstrumental surf vocal surf hot rod rock\r\nFusion genres\r\nSurf punk\r\nLocal scenes\r\nCalifornia Sound\r\nOther topics\r\nList of surf musicians Dick Dale The Beach Boys\r\nSurf music is a subgenre of rock music associated with surf culture, particularly as found in Southern California. It was especially popular from 1962 to 1964 in two major forms.[8] The first is instrumental surf, distinguished by reverb-drenched electric guitars played to evoke the sound of crashing waves, largely pioneered by Dick Dale and the Del-Tones. The second is vocal surf, which took elements of the original surf sound and added vocal harmonies, a movement led by the Beach Boys.[9][10]", renting_id: 10},
  {rating: 5, content: "simply excellent. simply great. without a hitch is was able to rent, use and return this item. thank you Asaf4.", renting_id: 11},
  {rating: 2, content: "i just remember he kicked my dog", renting_id: 13}
])
User.create!([
  {name: "Asaf3", email: "asaf.com", address: "sock drawer", password_digest: "$2a$10$v9/szoI3Vn7LjNTiP0WFZORdTcuowruOWYMlwOuak3tQDTCZ9gRzu"},
  {name: "Asaf4", email: "asaf1.com", address: "sock drawer", password_digest: "$2a$10$TIJ5vzJJDTQaY4lZgjSQP.F/eUzuvHDptbg5aQ951vSYUhgE3ocdO"},
  {name: "Kris", email: "kris.com", address: "potato garden", password_digest: "$2a$10$EEp1JFmx6J3lbNsleIDa3OWRf.IrI2jvFHJGOHxU3Q4fkr.gVh2OK"},
  {name: "Kris2", email: "kris2.com", address: "potato garden", password_digest: "$2a$10$oeCgap9dVb.xASg/kS4WIu.isAIoBvMdIewj7T9okHA7Nv.r2kATO"}
])
