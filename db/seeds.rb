# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#------------------------------------------------------------------------------
# MUST CREATE A USER FIRST
#------------------------------------------------------------------------------

# pic 0-8

img = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHdf9wySxUPYqJxQKB08t_Au6tZPNQUSGHXg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvOACbVzJGf1zQxovYMHof1aJugbri7XeJAQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3PKWiCX07MUsGGcp_8VaqFgirbxlxSxd65w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFVACpJuCrVfyh8fe1g9O4blf9RuBNdg-qSQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQatd2uWMCeewDe3HsQwrS7BzAPKf6Ek_1AVA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQuGmoFdy7Bc4Uzvf1xG1H0l6fC_oKAsgP4g&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhhIHzWMkKl0swdZuQcPWiLJHC_Lu96aZ7qg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvuDAdBdmd8-7fEnAX4VhEev5q8bOvS0O2g&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRQWzoYi-ohJLK21SPaNkcawhVYJ0qZy4mlw&usqp=CAU"
]

# text[0]
text = [
  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
]

# title 0-13
title = [
  "what movie would you delete",
  "what place that exists only in a movie",
  "what’s your favorite movie-related app",
  "have you ever attended a film festival?",
  "Why Do Queer and Female Viewers Love the Trickster?",
  "Arctic thriller’s film crew struggled",
  "The San Diego Comic-Con News Generator",
  "The Movies Are Back. But What Are Movies Now?",
  "in defence of historical inaccuracy",
  "movies themselves, are so awful these days",
  "Donald Trump‘s Presidency Was Supposed to Be Great",
  "10+ minutes of glorious dancing",
  "how we look at art… and how we think about it",
  "reader Bluejay’s project to help us all stay sane",
]


# Basic categories.
cat = ["reviews", "news"]

cat.each {|c| Category.find_or_create_by(name: c) }

# Create a category section.
30.times do |a|
  begin
    Article.create(title: title[rand(0..13)], content: text[0], category_id: rand(1..2), published: true).pictures.create(name: img[rand(0..8)])
  rescue => error
    puts error.message
  end
end


