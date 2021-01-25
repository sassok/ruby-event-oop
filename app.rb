# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

#my_event = Event.new("2021-01-25 17:30", 30, "Réunion", ["truc@machin.com", "bidule@truc.com"])
#event = Event.new("2025-09-30 15:00", 45, "Réu", ["truc@machin.com", "bidule@truc.com"])
#my_event.postpone_24
#my_event.end_date
#my_event.is_past?
#event.is_future?
#my_event.is_soon?

#puts my_event.to_s


#On crée 3 User
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

#On cherche un des user à partir de son e-mail
user_1 = User.find_by_email("claude@claude.com")

#On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
puts "Voici l'age du User trouvé : #{user_1.age}"



#print Event.all