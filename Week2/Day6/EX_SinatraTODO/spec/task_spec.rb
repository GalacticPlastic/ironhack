require_relative("../lib/task.rb")
RSpec.describe Task do
	# let :taskmaster do
	# 	Task.new
	# end
  	describe "#complete?" do
  		task1 = Task.new("Buy the milk", Time.now, nil)
  		it "Returns the task as false because it is not complete" do
	  		expect(task1.complete?).to eq(false)
	    end
	end
	describe "#complete!" do
  		task1 = Task.new("Buy the milk", Time.now, nil)
  		it "Returns the task as true because it is complete" do
	  		expect(task1.complete!).to eq(true)
	    end
	end
	describe "#make_incomplete!" do
  		task1 = Task.new("Buy the milk", Time.now, nil)
  		it "Returns the task as false because it was changed to incomplete" do
	  		expect(task1.make_incomplete!).to eq(false)
	    end
	end
	describe "#update_content!" do
 		task2 = Task.new("Buy the milk", Time.now, Time.now)
		it "Replaces the task content" do
	  		expect(task2.update_content!).to eq("Walk the dog")		# => Do I need ("") ?
		end
	end
end
RSpec.describe TodoList do
	describe "#add_task" do
		new_task = TodoList.new
		it "" do
			expect(new_task.add_task).to eq()
		end
	end
end