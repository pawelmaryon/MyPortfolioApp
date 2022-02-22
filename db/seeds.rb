# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |skill|
  Skill.create!(
    title: "my skill number #{skill}",
    procent: 10 +skill
  )
end

12.times do |item|
  Portfolio.create!(
    title: "Portfolio #{item}",
    body: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Rem natus nihil quo quidem perspiciatis atque inventore aspernatur. Explicabo deserunt, magnam neque voluptates aliquam nam doloribus iusto facilis maxime dolor illum praesentium vero, cupiditate, distinctio quod obcaecati iste ipsum iure veniam?",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/300x200",
    website: "www.google.com"

  )
end