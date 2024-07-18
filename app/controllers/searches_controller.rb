class SearchesController < ApplicationController
  def search
    @users = User.all
    @user = current_user
    if params[:query].present?
      query = params[:query]
      # Convertir la requête en nombre si possible
      numeric_query = Float(query) rescue nil

      sql_subquery = "last_name ILIKE :query OR first_name ILIKE :query OR address ILIKE :query"

      if numeric_query
        # Ajouter une plage de 0.10 autour de la valeur recherchée pour running_pace
        lower_bound = numeric_query - 0.50
        upper_bound = numeric_query + 0.50
        sql_subquery += " OR running_pace BETWEEN :lower_bound AND :upper_bound"
        @users = @users.where(sql_subquery, query: "%#{query}%", lower_bound: lower_bound, upper_bound: upper_bound)
      else
      @users = @users.where(sql_subquery, query: "%#{query}%")
      end
    end
  end
end
