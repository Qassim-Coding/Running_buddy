class SearchesController < ApplicationController
  def search
# on récupère le texte de la recherche et on l'envoie au model Search. On l'affiche dans la view.
# logique de la méthode : affiche les users dont le nom ou le rythme de course correspond à la recherche.
 @users = User.all
  end
end
