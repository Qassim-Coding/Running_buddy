class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end

  def dashboard
    # l'utilisateur concerné est celui qui est actuellement connecté
    @user = current_user
    # l'utilisateur connecté peut voir ses meetings
    @meetings = Meeting.where(user_id: @user.id)
    # l'utilisateur connecté peut voir ses relations
    @relationships = Relationship.where(asker_id: @user.id)
    @users = User.all
    # permet d'afficher toutes les cartes des Users -> itération de mes cards.
  end

  def index
    @users = User.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
