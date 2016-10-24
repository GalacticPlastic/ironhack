class Task
    require 'time'
    attr_reader :content, :id, :created_at, :updated_at
    @@current_id = 1
    def initialize(content, created_at, updated_at)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.now
        @updated_at = nil
    end
    def complete?				# => Returns False.
    	@completed
    end
   	def complete!				# => Returns True.
   		@completed = true
    end
    def make_incomplete!		# => Opposite of complete! class. (Returns False.)
    	@completed = false
    end
    def update_content!
    	@updated_at = Time.now				# => How to test?
    	@content.replace("Walk the dog")	# => Shouldn't the string replacement be dynamic?
    end
end