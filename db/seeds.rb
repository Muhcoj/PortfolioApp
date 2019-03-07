3.times do |topic| 
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "3 topics created"

10.times do |blog| 
	Blog.create!(
		title: "Myb blogpost #{blog}",
		body: "What I am really saying 
		is that you don’t need to do anything, 
		because if you see yourself in the correct way, 
		you are all as much extraordinary phenomenon of nature as trees, 
		clouds, the patterns in running water, the flickering of fire, 
		the arrangement of the stars, and the form of a galaxy. 
		You are all just like that, and there is nothing wrong with you at all. 
		– Alan Watts",
		topic_id: Topic.last.id 
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 5
	)
end

puts "5 skills created"

8.times do |portfolio|
	Portfolio.create!(
		title: "Title portfolio #{portfolio}",
		subtitle: "Ruby on Rails",
		body: "But I’ll tell you what hermits realize.
				  If you go off into a far, far forest and get very quiet,
				  you’ll come to understand that you’re connected with everything.
				  – Alan Watts",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end

1.times do |portfolio|
	Portfolio.create!(
		title: "Title portfolio #{portfolio}",
		subtitle: "Javascript",
		body: "But I’ll tell you what hermits realize.
				  If you go off into a far, far forest and get very quiet,
				  you’ll come to understand that you’re connected with everything.
				  – Alan Watts",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end

puts "9 portfolio items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
	)
end

puts "3 Technologies created"
