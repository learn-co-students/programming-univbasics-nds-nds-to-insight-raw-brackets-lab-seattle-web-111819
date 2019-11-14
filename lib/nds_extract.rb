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
  names = 0
  while names < nds.count do
    movs = 0
    tot = 0
    while movs < nds[names][:movies].count do
      tot += nds[names][:movies][movs][:worldwide_gross]
      movs += 1
    end
    result[nds[names][:name]] = tot
    names += 1
  end
  return result
end