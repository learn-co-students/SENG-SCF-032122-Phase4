p1 = Production.create(title: 'Hamlet', genre: 'drama', director:'Bill Shakespeare', description:'The Tragedy of Hamlet, Prince of Denmark', budget: 100000.00, image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', ongoing:true)
p2 = Production.create(title: 'cats', genre: 'musical', director:'Andrew Lloyd Webber', description:' Jellicles cats sing and dance', budget: 200000.00, image:'https://upload.wikimedia.org/wikipedia/en/3/3e/CatsMusicalLogo.jpg', ongoing:true)
p3 = Production.create(title:'Hamilton', genre: 'musical', director:'Lin-Manuel Miranda', description:'An American Musical is a sung-and-rapped-through musical by Lin-Manuel Miranda. It tells the story of American Founding Father Alexander Hamilton. ', budget: 240000.00, image:'https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg', ongoing:true)
p4 = Production.create(title:'The Importance of Being Earnest', genre: 'Comedy', director:'Oscar Wilde', description:"A Trivial Comedy for Serious People is a play by Oscar Wilde. First performed on 14 February 1895 at the St James's Theatre in London, it is a farcical comedy in which the protagonists maintain fictitious personae to escape burdensome social obligations.", budget: 100000.00, image:'https://www.chicagotribune.com/resizer/DLvEG_kx6y_BdWnDksJ71FdicBk=/1200x0/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/OYX3VNBYG5DBLBBRLFNMO3QINM.jpg', ongoing:false)

ProductionRole.create(role:'Hamlet', understudy:true, production: p1)
ProductionRole.create(role:'Ophellia', understudy:true, production: p1)
ProductionRole.create(role:'Horatio', understudy:true, production: p1)
ProductionRole.create(role:'Laertes', understudy:true, production: p1)
ProductionRole.create(role:'Gertrude', understudy:true, production: p1)
ProductionRole.create(role:'Claudius', understudy:true, production: p1)

ProductionRole.create(role:'Grizabella', understudy:true, production: p2)
ProductionRole.create(role:'Mr.Mistoffelees', understudy:true, production: p2)
ProductionRole.create(role:'Rum Tum Tugger', understudy:true, production: p2)
ProductionRole.create(role:'Macavity', understudy:true, production: p2)
ProductionRole.create(role:'Rumpleteazer', understudy:true, production: p2)

ProductionRole.create(role:'King George III', understudy:true, production: p3)
ProductionRole.create(role:'Alexander Hamilton', understudy:true, production: p3)
ProductionRole.create(role:'Eliza Hamilton', understudy:true, production: p3)
ProductionRole.create(role:'Marquiz de Lafayette', understudy:true, production: p3)
ProductionRole.create(role:'Aaron Burr', understudy:true, production: p3)

ProductionRole.create(role:'Lady Augusta Bracknell', understudy:true, production: p4)
ProductionRole.create(role:'Hon. Gwedolen Fairfax', understudy:true, production: p4)
ProductionRole.create(role:'Algeron Moncrieff', understudy:true, production: p4)
ProductionRole.create(role:'Cecily Cardew', understudy:true, production: p4)
ProductionRole.create(role:'Jack Worthing', understudy:true, production: p4)



u1 = User.create(name:'ix', email:'email@gmail.com')
u2 = User.create(name:'rose', email:'rose@gmail.com')

u3 = User.create(name:'Mikhail', email:'Mikhail@gmail.com')
u4 = User.create(name:'Jacques', email:'Jacques@gmail.com')
u5 = User.create(name:'Florrie', email:'Florrie@gmail.com')
u6 = User.create(name:'Eliott', email:'Eliott@gmail.com')



Ticket.create(user:u1, production:p2, price:65.00)
Ticket.create(user:u2, production:p2, price:65.00)
Ticket.create(user:u2, production:p1, price:65.00)
Ticket.create(user:u3, production:p1, price:65.00)
Ticket.create(user:u4, production:p1, price:65.00)
Ticket.create(user:u5, production:p1, price:65.00)
Ticket.create(user:u6, production:p1, price:65.00)
Ticket.create(user:u3, production:p3, price:65.00)
Ticket.create(user:u3, production:p4, price:65.00)
Ticket.create(user:u3, production:p2, price:65.00)
Ticket.create(user:u1, production:p4, price:65.00)
Ticket.create(user:u4, production:p1, price:65.00)
Ticket.create(user:u4, production:p3, price:65.00)
Ticket.create(user:u4, production:p4, price:65.00)
Ticket.create(user:u5, production:p1, price:65.00)
Ticket.create(user:u5, production:p2, price:65.00)
Ticket.create(user:u6, production:p1, price:65.00)
Ticket.create(user:u6, production:p2, price:65.00)

puts "Seeding complete!"