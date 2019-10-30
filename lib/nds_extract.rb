$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  print pp nds


  #iterate over movies array to get to price

  #iterate and list director's names and their gross


  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
=begin
  index = 0
  hash = {}
  grand_total = 0

  while index < directors_database.length do
    #director_name = directors_database[index]
    director_gross = directors_database[index][:movies][:worldwide_gross]

    #hash >> {"director_name" => "director_gross"}
    grand_total += director_gross

    index += 1
  end

  p grand_total
=end
end
