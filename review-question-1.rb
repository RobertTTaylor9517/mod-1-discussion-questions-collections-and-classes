## QUESTION 1
require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

# How would you get the url for Bulbasaur's ability?
url = pokemon.find{|pokemon| pokemon[:name] == "bulbasaur"}[:abilities][0][:ability][:url]
puts url
puts

def ability_url(poke_array, poke_name)
    puts poke_array.find{|pokemon| pokemon[:name] == poke_name}[:abilities][0][:ability][:url]
end
ability_url(pokemon, "pikachu")
puts
# How would you return the first pokemon with base experience over 40?
base = pokemon.find{|pokemon| pokemon[:base_experience] > 40}[:name]
puts base
puts
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
strong_p = []
pokemon.each do |pokemon|
    if pokemon[:base_experience] > 40
        strong_p << pokemon[:name]
    end
end
puts strong_p
puts
# How would you return an array of all of the pokemon's names?
puts pokemon.map{|pokemon| pokemon[:name]}
puts
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.

def overweight(poke_weight)
    poke_weight.each do |pokemon|
        if pokemon[:weight] > 60
            return true
        else
            return false
        end
    end
end

puts overweight(pokemon)