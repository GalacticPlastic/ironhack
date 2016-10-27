require 'sinatra'
require 'sinatra/reloader'
require_relative('lib/task.rb')
require_relative('lib/todolist.rb')
# todo_list = TodoList.new("Zoso")
# todo_list.load_tasks

get "/" do
	erb(:index)
end
get "/tasks" do
	# => Display all tasks
	erb(:task_index)
end
get "/new_task" do
	erb(:new_task)
end
post "/create_task" do
	redirect to("/")
end