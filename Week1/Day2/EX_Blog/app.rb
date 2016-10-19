require_relative("lib/posts.rb")
require_relative("lib/SponsoredPost.rb")
require_relative("lib/blog.rb")

seconds_per_day = 60 * 60 * 24

blog = Blog.new
blog.add_post Post.new("Quirky Facts About Lorem Ipsum", Time.now, "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2,000 years old.", "Lorem Ipsum")
blog.add_post SponsoredPost.new("Second Title of a Sponsored Post", Time.new(2016, 10, 5, 12, 30), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Jimmy Page")
blog.add_post Post.new("Third Title of a Post", Time.new(2016, 9, 16, 8, 10), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Robert Plant")
blog.add_post Post.new("Fourth Title of a Post", Time.new(2016, 8, 31, 18, 35), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Phil Collins")
blog.add_post Post.new("Fifth Title of a Post", Time.new(2016, 8, 20, 7, 00), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "John Lennon")
blog.add_post Post.new("Sixth Title of a Post", Time.new(2016, 8, 12, 13, 22), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Dennis DeYoung")
blog.add_post Post.new("Yet Another Post", Time.new(2016, 8, 1, 8, 00), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Phil Collins")
blog.add_post Post.new("Final Post Title", Time.new(2016, 7, 27, 17, 30), "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.", "Paul McCartney")

# Replace days w/Time class, which outputs date and time

blog.publish_front_page
# Two Classes: Blog and Post
# Every post has a title, a date and text.
# Blog: It has a container for all the posts. An array or something like that.

# posts = []
# blog = Blog.new(posts)
# puts ""
# blog.publish_front_page