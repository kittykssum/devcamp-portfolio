10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "今次的抵食優惠中，以Pizza Hut和Pacific Coffee推出的優惠最吸引，Pizza Hut的買一送一優惠適用於堂食及外賣自取；Pacific Coffee的買一送一贈飲更可以儲起之後換取。👇👇👇 部分2月限定！點擊睇6間食店買一送一優惠"
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
		body: "札幌雪まつりは、保育園や小学校の見学ツアーなどが中止になっていた。大通り会場や子供が遊べるツドーム会場も、ガラガラ。
会場にいるのは外国人くらい。",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end

puts "9 portfolio items created"