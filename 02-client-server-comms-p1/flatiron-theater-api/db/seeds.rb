puts "🌱 seeding..."

p1 = Production.create(title: 'Hamlet', genre: 'drama', director:'Bill Shakespeare', description:'The Tragedy of Hamlet, Prince of Denmark', budget: 100000.00, image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', ongoing:true)

p2 = Production.create(title: 'Hamilton', genre: 'musical', director:'Lin Manuel Miranda', description:'Founding Fathers Updated', budget: 2500000.00, image:'https://media.vanityfair.com/photos/575846ed1e43ab7160f25b85/master/pass/Hamilton-Broadway-Phillipa-Soo-Rene%CC%81e-Elise-Goldsberry-Jasmine.jpg', ongoing:true)

ProductionRole.create(role:'Hamlet', understudy:true, production: p1)
ProductionRole.create(role:'Ophelia', understudy:false, production: p1)
ProductionRole.create(role:'Alexander', understudy:true, production: p2)
ProductionRole.create(role:'Lafayette', understudy:true, production: p2)
ProductionRole.create(role:'Eliza', understudy:false, production: p2)

user1 = User.create(name: "Shelby", email: "shelby@shelby.com")
user2 = User.create(name: "Tiger Rose", email: "trose@shelby.com")

Ticket.create(user: user1, production: p2, price:125.00)
Ticket.create(user: user2, production: p2, price:105.00)
Ticket.create(user: user1, production: p1, price:115.00)

puts "🌱 seeding complete!"