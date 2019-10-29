$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  dir_hash = {}
  dir_index = 0 
  total = 0 
  while dir_index < nds.length do
    movie_index = 0 
    while movie_index < nds[dir_index][:movies].length do
     total += nds[dir_index][:movies][movie_index][:worldwide_gross]
     dir_hash[nds[dir_index][:name]] = total
     movie_index += 1
   end 
   dir_index += 1 
   total = 0 
 end 
 dir_hash 
end




