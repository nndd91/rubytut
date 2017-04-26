require "sinatra"

get ('/hello') do
  'Hello, web! Test
  <a href="./salut">Salut!</a>'
end

get('/salut') do
  'Salut web!'
end

get('namaste') do
  'Namaste, web!'
end
