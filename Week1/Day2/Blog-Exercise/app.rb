require_relative("lib/posts.rb")

blog = Blog.new
blog.add_post Post.new("Quirky Facts About Lorem Ipsum", "October 4, 2016", "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2,000 years old.")
blog.add_post Post.new("", "September 22, 2016", "", "Jimmy Page")
blog.add_post Post.new("", "September 16, 2016", "", "Robert Plant")
blog.add_post Post.new("", "August 31, 2016", "", "Phil Collins")
blog.add_post Post.new("", "August 20, 2016", "", "John Lennon")
blog.add_post Post.new("", "August 12, 2016", "", "Dennis DeYoung")
blog.add_post Post.new("", "August 1, 2016", "", "Phil Collins")
blog.add_post Post.new("", "July 27, 2016", "", "Paul McCartney")

blog.publish_front_page

# Two Classes: Blog and Post
# Every post has a title, a date and text.
# Blog: It has a container for all the posts. An array or something like that.