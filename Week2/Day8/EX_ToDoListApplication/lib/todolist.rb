class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(new_task)
    	@tasks.push(new_task)
    end
    def delete_task(task_id)
    	@tasks.delete_if do |the_task|
    		the_task.id == task_id
    	end
    end
    def find_task_by_id(task_id)
    	@tasks.find do |the_task|
    		the_task.id == task_id
    		# => Why does this return nil if nothing found to match by default??
    		# => Nvm, default function of .find method, lol!
    	end
    end
    def load_tasks

    end
end