User.create!([
  {name: "Sami", email: "sami@actualize.co", password: "password", password_confirmation: "password", admin: false},
  {name: "Bob", email: "bob@gmail.com", password: "password", password_confirmation: "password", admin: true},
  {name: nil, email: "dkfshdfkdsjhfskldjfhsdlkjfhsdlkf", password: "password", password_confirmation: "password", admin: false},
  {name: nil, email: "blahblah@gmail.com", password: "password", password_confirmation: "password", admin: false}
])
Supplier.create!([
  {name: "Think Geek", email: "think@geek.com", phone: "123-132-1234"},
  {name: "Amazon", email: "ama@zon.com", phone: "555-555-5555"},
  {name: "Hot Topic", email: "hot@topic.com", phone: "123-123-1234"}
])
Product.create!([
  {name: "Hitchhiker's Guide to the Galexy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom..", stock: true, supplier_id: 1},
  {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", stock: true, supplier_id: 1},
  {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", stock: true, supplier_id: 1},
  {name: "WNYX Mug", price: "200.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", stock: true, supplier_id: 2},
  {name: "Sonic Screwdriver", price: "7.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", stock: true, supplier_id: 1},
  {name: "Lightsaber", price: "300.0", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", stock: true, supplier_id: 2},
  {name: "Decoder Ring", price: "100.0", description: "fkdsh skljf lskdfh ksdlfh sdkf hsdkfjh sdfk hsdkfh ", stock: true, supplier_id: 1},
  {name: "Decoder Ring 2", price: "1.0", description: "Now even cheaper!", stock: true, supplier_id: 3}
])
Category.create!([
  {name: "weapon"},
  {name: "electronic"},
  {name: "small"},
  {name: "medium"},
  {name: "large"},
  {name: "foobar"}
])
Image.create!([
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2},
  {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 3},
  {url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", product_id: 1},
  {url: "http://www.notcot.com/images/guide.gif", product_id: 5},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 6},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 4},
  {url: "https://cdn.pixabay.com/photo/2014/04/03/11/55/robot-312566_960_720.png", product_id: 7},
  {url: "http://weknowyourdreams.com/images/robot/robot-02.jpg", product_id: 7},
  {url: "http://www.ultrasabers.com/v/vspfiles/templates/ultrasabers/images/blade-colors-ipad.jpg", product_id: 2},
  {url: "http://images.buystarwarstoys.com/products/9288/1-1/ahsoka-tano-toy-lightsaber.jpg", product_id: 2},
  {url: "http://vignette4.wikia.nocookie.net/zelda/images/7/77/Hyrule_Warriors_Magical_Shield_(Render).png/", product_id: 8},
  {url: "https://ae01.alicdn.com/kf/HTB1gzlDJVXXXXaMXXXXq6xXFXXX1/New-font-b-Kurisu-b-font-font-b-Makise-b-font-Steins-Gate-Anime-Dakimakura-Japanese.jpg", product_id: 12},
  {url: "http://passwordsecuritytips.com/wp-content/uploads/2014/11/decoder.jpg", product_id: 13},
  {url: "http://passwordsecuritytips.com/wp-content/uploads/2014/11/decoder.jpg", product_id: 14}
])
