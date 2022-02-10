# Setting up sample data for the application

puts "Creating blogs ......"
10.times do |blog|
	Blog.create!(title: "Blog #{blog}", 
				body: "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
						Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type specimen book. It has survived 
						not only five centuries, but also the leap into electronic typesetting, remaining essentially 
						unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem
						Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including 
						versions of Lorem Ipsum. Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
end
puts "10 blogs created!"

puts "Creating blogs ......"
9.times do |portfolio|
	Portfolio.create!(
	title: "My portfolio {portfolio}",
	subtitle: "Portfolio subtitle #{portfolio}",
	body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
	main_image: "https://place-hold.it/600x300",
	thumb_image: "https://place-hold.it/300x200")
end
puts "9 portfolios created!"

puts "Creating skills ......"
6.times do |skill|
	Skill.create!(title: "Skill #{skill}", percent_utilized: 15)
end
puts "6 skills created!"