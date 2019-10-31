require "pp"

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
  # nil

  #pp nds 
  
  #gross = 0 
  #hash = {}
  #nds.each do |director_info|
  #  director = director_info[:name]
  #  director_info[:movies][:worldwide_gross].each do |gross_two|
  #    gross += gross_two
  #    hash[director] = gross 
  #  end 
  #end 
  
  hash = {}
  nds.each do |name_movies|
    gross = 0 
    director_name = name_movies[:name]
    name_movies[:movies].each do |movie|
      gross += movie[:worldwide_gross]
    end
    hash.store(director_name, gross)
  end
  hash
end 
