$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  #print pp nds
  result = {}
    #key/value pairs go in here after evaluated
    #example:
    # "Stephen Spielberg" => "total gross of all his movies",
    # "Russo Brothers" => "total gross of all his movies",
    #etc.

  #iterate over each directors' movies' wwgross, save to a totaling amount for that director
  director_index = 0
  while director_index < nds.length do
    current_director = nds[director_index][:name]
    result[current_director] = gross_for_director(nds[director_index])
    director_index+=1
  end
  result
end

def gross_for_director(directors_database)
  movie_index = 0
  movies = directors_database[:movies]
  total_gross_for_director = 0

  while movie_index < movies.length do
    total_gross_for_director += movies[movie_index][:worldwide_gross]
    movie_index += 1
    end
    total_gross_for_director
  end

=begin
    index = 0
    movie_index= 0
    one_directors_gross = 0

    while index < directors_database.length do
      director_name = directors_database[index]

      #loop below iterates over each movie under indexed director and adds up the values for the wwgross
        while directors_database[index][:movies][movie_index] < directors_database[index][:movies].length do
        one_directors_gross += director_name[:movies][movie_index][:worldwide_gross]
        movie_index += 1
        end

      #push variables from above (director_name and one_directors_gross) as key/value pairs in the hash called directors_gross_result
      directors_gross_result<<{/#{director_name} => /#{one_directors_gross}}
      index += 1
    end




  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
=end
