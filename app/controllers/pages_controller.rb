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
    # permet d'afficher toutes les cartes des Users -> itération de mes cards.
    @users = User.all
    # permet de filtrer les Users en fonction de leur running_pace
    if params[:sort].present?
      if params[:sort] == 'city_asc'
        @users = @users.order_by_city_asc
      elsif params[:sort] == 'city_desc'
        @users = @users.order_by_city_desc
      elsif params[:sort] == 'pace_asc'
        @users = @users.order("running_pace ASC")
      elsif params[:sort] == 'pace_desc'
        @users = @users.order("running_pace DESC")
      end
    end
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { user: user }),
        marker_html: render_to_string(partial: "marker")
      }
    end
    # permet d'afficher toutes les cartes des Users -> itération de mes cards.
  end
end
