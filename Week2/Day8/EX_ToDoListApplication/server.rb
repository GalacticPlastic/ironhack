require 'sinatra'
require 'sinatra/reloader' if development?
require_relative('lib/task.rb')
require_relative('lib/todolist.rb')
menu = {
	"Home" => "",
	"Add New Task" => "new_task"
	# "" => ""
}
todo_list = TodoList.new
todo_list.add_task Task.new("Come in with the milk.")
todo_list.add_task Task.new("Come in with the milk!")
todo_list.load_tasks
get "/" do
	@menu = menu
	@tasks = todo_list.tasks 			# => this is the array
	# => Display all tasks
	erb(:home)
end
get "/new_task" do
	@menu = menu
	@task_name = params[:task_name]
	erb(:new_task)
end
post "/create_task" do
	todo_list.add_task Task.new(params[:task_name])
	# => How to save?
	redirect to("/")
end
post "/complete_task" do
	# params[:task_id] -> "567" -> 567
	task_id = params[:task_id].to_i
	task_object = todo_list.find_task_by_id(task_id)
	task_object.complete!
	redirect to("/")
end
post "/uncomplete_task" do
	# params[:task_id] -> "567" -> 567
	task_id = params[:task_id].to_i
	task_object = todo_list.find_task_by_id(task_id)
	task_object.make_incomplete!
	redirect to("/")
end
post "/delete_task" do
	# task_id = params[:task_id].to_i
	# todo_list.delete_task(task_id)
	todo_list.delete_task(params[:task_id].to_i)	# Refactored
	redirect to("/")
end