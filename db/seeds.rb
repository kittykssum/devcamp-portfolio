10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "今次的抵食優惠"
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percentage_utilized: 15
	)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "My great service",
		body: "札幌雪まつりは",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end

puts "9 portfolio items created"