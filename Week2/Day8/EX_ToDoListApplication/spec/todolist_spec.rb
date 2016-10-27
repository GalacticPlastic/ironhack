require_relative("../lib/todolist.rb")
RSpec.describe TodoList do
	describe "#add_task" do
		it "Adds a new task to the To Do List" do
			# new_list = TodoList.new
			new_list.add_task(task1)
			expect(new_list.tasks.length).to eq(1)
			# Same as?
			expect(new_list.tasks).to include(task1)
			# Same as:
			# expect(new_list.tasks).to eq([task1])
		end
	end
	describe "#delete_task" do
		it "Removes a task to the To Do List by the Task ID" do
			task_list.delete_task(task1.id)
			expect(task_list.tasks).not_to include(task1)
			# Same as:
			# expect(task_list.tasks).to eq([task2, task3])
		end
	end
	describe "#find_task_by_id" do
		it "Finds a specific task in the To Do List by the Task ID" do
			expect(task_list.find_task_by_id(task1.id)).to eq(task1)
		end
		it "Returns nil when searching for a task with an incorrect ID" do
			expect(task_list.find_task_by_id(9999)).to be_nil
		end
	end
end