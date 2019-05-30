# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.destroy_all
User.destroy_all

user1 = User.create({name: 'Dunia', email: 'dunia@hotmail.com'})
user2 = User.create({name: 'John', email: 'John@hotmail.com'})
user3 = User.create({name: 'Katie', email: 'Katie@hotmail.com'})
user4 = User.create({name: 'Shawkat', email: 'Shawkat@hotmail.com'})
user5 = User.create({name: 'Ahmad', email: 'Ahmad@hotmail.com'})
user6 = User.create({name: 'Salwa', email: 'Salwa@hotmail.com'})
user7 = User.create({name: 'Meena', email: 'Meena@hotmail.com'})
user8 = User.create({name: 'Melanie', email: 'Melanie@hotmail.com'})
user9 = User.create({name: 'Alex', email: 'Alex@hotmail.com'})
user10 = User.create({name:'Polli', email: 'Polli@hotmail.com'})

quote1 = Quote.create({philosopher_name: 'Albert Camus', quote: 'Dont walk behind me; I may not lead. Dont walk in front of me; I may not follow. Just walk beside me and be my friend.', likes: 1, user_id: user1.id})
quote2 = Quote.create({philosopher_name: 'Sun Tzu', quote: 'Victorious warriors win first and then go to war, while defeated warriors go to war first and then seek to win.', likes: 6, user_id: user1.id})
quote3 = Quote.create({philosopher_name: 'Plato', quote: 'Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, and charm and gaiety to life and to everything.', likes: 5, user_id: user1.id})
quote4 = Quote.create({philosopher_name: 'Socrates', quote: 'By all means, marry. If you get a good wife, youll become happy; if you get a bad one, youll become a philosopher.', likes: 2, user_id: user1.id})
quote5 = Quote.create({philosopher_name:'Friedrich Nietzsche', quote: 'God is dead. God remains dead. And we have killed him. Yet his shadow still looms. How shall we comfort ourselves, the murderers of all murderers? What was holiest and mightiest of all that the world has yet owned has bled to death under our knives; who will wipe this blood off us? What water is there for us to clean ourselves?', likes: 1, user_id: user1.id})
quote6 = Quote.create({philosopher_name: 'Jean-Paul Sartre', quote: 'Everything that exists is born for no reason, carries on living through weakness, and dies by accident', likes: 0, user_id: user1.id})
quote7 = Quote.create({philosopher_name: 'Democritus', quote: 'The brave man is he who overcomes not only his enemies but his pleasures', likes: 5, user_id: user1.id})
quote8 = Quote.create({philosopher_name: 'Sir Francis Bacon', quote: 'A little philosophy inclineth mans mind to atheism; but depth in philosophy bringeth men’s minds about to religion', likes: 3, user_id: user1.id})
quote9 = Quote.create({philosopher_name: 'W. K. Clifford', quote: 'It is wrong always, everywhere and for everyone, to believe anything upon insufficient evidence', likes: 7, user_id: user1.id})
quote10 = Quote.create({philosopher_name: 'Aristotle', quote: 'Happiness lies in virtuous activity, and perfect happiness lies in the best activity, which is contemplative', likes: 1, user_id: user1.id})
quote11 = Quote.create({philosopher_name: 'Ludwig Wittgenstein', quote: 'Whereof one cannot speak, thereof one must be silent', likes: 2, user_id: user1.id})
quote12 = Quote.create({philosopher_name: 'Martin Heidegger', quote: 'He who thinks great thoughts, often makes great errors', likes: 3, user_id: user1.id})
quote13 = Quote.create({philosopher_name: 'G. W. F. Hegel', quote: 'What is rational is actual and what is actual is rational', likes: 4, user_id: user1.id})
quote14 = Quote.create({philosopher_name: 'Heraclitus', quote: 'One cannot step twice in the same river', likes: 3, user_id: user1.id})
quote15 = Quote.create({philosopher_name: 'Voltaire', quote: 'If God did not exist, it would be necessary to invent Him', likes: 6, user_id: user1.id})
quote16 = Quote.create({philosopher_name: 'Bertrand Russell', quote: 'Science is what you know. Philosophy is what you dont know', likes: 1, user_id: user1.id})
quote17 = Quote.create({philosopher_name: 'Aristotle', quote: 'He who is unable to live in society, or who has no need because he is sufficient for himself, must be either a beast or a god', likes: 2, user_id: user1.id})
quote18 = Quote.create({philosopher_name: 'Baruch Spinoza', quote: 'If men were born free, they would, so long as they remained free, form no conception of good and evil', likes:1, user_id: user1.id})
quote19 = Quote.create({philosopher_name: 'Jean-Paul Sartre', quote: 'Man is condemned to be free', likes: 4, user_id: user1.id})
quote20 = Quote.create({philosopher_name: 'Plato', quote: 'That man is wisest who, like Socrates, realizes that his wisdom is worthless', likes: 0, user_id: user1.id})
quote21 = Quote.create({philosopher_name: 'Søren Kierkegaard', quote: 'The function of prayer is not to influence God, but rather to change the nature of the one who prays', likes: 3, user_id: user1.id})
quote22 = Quote.create({philosopher_name: 'René Descartes', quote: 'If you would be a real seeker after truth, it is necessary that at least once in your life you doubt, as far as possible, all things', likes: 1, user_id: user1.id})
