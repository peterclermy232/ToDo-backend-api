Movie.destroy_all
Review.destroy_all
Viewer.destroy_all

puts "🌱 Seeding spices..."

15.times {
  Viewer.create(
    password: "password",
    name:Faker::Name.name,
    age:rand(10..90)
  )
}


Movie.create(title: "A New Hope", release_date: "May 25, 1977", cast: "Harrison Ford", director: "George Lucas", producer: "Gary Kurtz", image_URL: "https://upload.wikimedia.org/wikipedia/en/8/87/StarWarsMoviePoster1977.jpg")
Movie.create(title: "The Empire Strikes Back", release_date: "May 21, 1980", cast: "", director: "Irvin Kershner", producer: "Gary Kurtz", image_URL: "https://upload.wikimedia.org/wikipedia/en/3/3f/The_Empire_Strikes_Back_%281980_film%29.jpg")
Movie.create(title: "Return of the Jedi", release_date: "May 25, 1983", cast: "", director: "Richard Marquand", producer: "Howard Kazanjian", image_URL: "https://upload.wikimedia.org/wikipedia/en/b/b2/ReturnOfTheJediPoster1983.jpg")
Movie.create(title: "The Phantom Menace", release_date: "May 19, 1999", cast: "", director: "George Lucas", producer: "Rick McCallum", image_URL: "https://upload.wikimedia.org/wikipedia/en/4/40/Star_Wars_Phantom_Menace_poster.jpg")
Movie.create(title: "Attack of the Clones", release_date: "May 16, 2002", cast: "", director: "George Lucas", producer: "Rick McCallum", image_URL: "https://upload.wikimedia.org/wikipedia/en/3/32/Star_Wars_-_Episode_II_Attack_of_the_Clones_%28movie_poster%29.jpg")
Movie.create(title: "Revenge of the Sith", release_date: "May 19, 2005", cast: "", director: "George Lucas", producer: "Rick McCallum", image_URL: "https://upload.wikimedia.org/wikipedia/en/9/93/Star_Wars_Episode_III_Revenge_of_the_Sith_poster.jpg")
Movie.create(title: "The Force Awakens", release_date: "December 18, 2015", cast: "", director: "J. J. Abrams", producer: "Kathleen Kennedy, J. J. Abrams and Bryan Burk", image_URL: "https://upload.wikimedia.org/wikipedia/en/a/a2/Star_Wars_The_Force_Awakens_Theatrical_Poster.jpg")
Movie.create(title: "The Last Jedi", release_date: "December 15, 2017", cast: "", director: "Rian Johnson", producer: "Kathleen Kennedy and Ram Bergman", image_URL: "https://upload.wikimedia.org/wikipedia/en/7/7f/Star_Wars_The_Last_Jedi.jpg")
Movie.create(title: "The Rise of Skywalker	", release_date: "December 20, 2019", cast: "", director: "J. J. Abrams", producer: "Kathleen Kennedy, J. J. Abrams and Michelle Rejwan", image_URL: "https://upload.wikimedia.org/wikipedia/en/a/af/Star_Wars_The_Rise_of_Skywalker_poster.jpg")


# 10.times {
#   Movie.create(
#     title:Faker::Movie.title,
#     release_date:Faker::Date.between(from: 30.days.ago, to:Date.today),
#     cast:Faker::Name.name,
#     director:Faker::Name.name,
#     producer:Faker::Name.name,
#     image_URL: "www.imageURL.com"
#   )
# }

20.times {
  Review.create(
  movie_id:Movie.all.sample.id,
  viewer_id:Viewer.all.sample.id,
  name:Faker::Name.name,
  review:Faker::Movie.quote
  )
}



# Seed your database here

puts "✅ Done seeding!"
