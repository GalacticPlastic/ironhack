class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(new_task)
    	@tasks.push(new_task)
    end
    def delete_task
    	@tasks.delete_if do |remove_task|
    		remove_task 
    	end
    end
    def find_task_by_id

    end
end