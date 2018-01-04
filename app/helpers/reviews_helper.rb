module ReviewsHelper

  def format_average_stars(movie)
  if movie.average_stars.nil?
    content_tag(:strong, 'No reviews')
  else
    pluralize(number_with_precision(movie.average_stars, precision: 1) , 'star')
    # to display the average number of stars as a number of asterisks (*). 
    #For example, if the average rating is 4, show four asterisks.  
    #  "*" * movie.average_stars.round
  end
end

end
