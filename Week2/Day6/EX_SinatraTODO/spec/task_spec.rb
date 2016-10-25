require_relative("../lib/task.rb")
RSpec.describe Task do
	# let :taskmaster do
	# 	Task.new
	# end
  	describe "#complete?" do
  		it "Returns the task as false because it is not complete" do
	  		task1 = Task.new("Come in with the milk")
	  		expect(task1.complete?).to eq(false)
	    end
	end
	describe "#complete!" do
  		it "Returns the task as true because it is complete" do
	  		task2 = Task.new("Come in with the milk")
	  		task.complete!								# => Test side effect, not method directly.
	  		expect(task2.complete?).to eq(true)
	    end
	end
	describe "#make_incomplete!" do
  		it "Returns the task as false because it was changed to incomplete" do
	  		task3 = Task.new("Come in with the milk")
	  		task.complete!
	  		task.make_incomplete!
	  		expect(task3.complete?).to eq(false)
	    end
	end
	describe "#update_content!" do
		it "Replaces the task content" do
	  		task4 = Task.new("Come in with the milk")
	  		task.update_content!("Walk the dog")
	  		expect(task.content).to eq("Walk the dog")		# => Do I need ("") ?
		end
	end
end