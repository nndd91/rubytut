require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

  @movies = []
  array = ["Jaws", "Alien", "Terminator 2"]
  array2 = ["D1", "D2", "D3"]
  for i in 0..2
    @movies[i] = Movie.new
    @movies[i].title = array[i]
    @movies[i].director = array2[i]
  end

  store.transaction do
    store[1] = @movies[0]
    store[2] = @movies[1]
    highest_id = store.roots.max || 0
    p highest_id+ 1
  end
