require 'task_tracker'

RSpec.describe TaskTracker do
  context "add to list and print list" do
    it "returns array with 'eat'" do
      task_tracker = TaskTracker.new
      task_tracker.add("eat")
      expect(task_tracker.to_do).to eq ["eat"]
    end

    it "returns array with 'eat' and 'brush you're teeth'" do
      task_tracker = TaskTracker.new
      task_tracker.add("eat")
      task_tracker.add("brush you're teeth")
      expect(task_tracker.to_do).to eq ["eat", "brush you're teeth"]
    end
  end

  context "add an empty string" do
    it "fails" do
      task_tracker = TaskTracker.new
      expect{ task_tracker.add("") }.to raise_error "Task cannot be an empty string."
    end

    it "fails" do
      task_tracker = TaskTracker.new
      expect{ task_tracker.add(" ") }.to raise_error "Task cannot be an empty string."
    end
  end

  context "no tasks set" do
    it "fails" do
      task_tracker = TaskTracker.new
      expect{ task_tracker.to_do }.to raise_error "No task set."
    end
  end

  context "mark as complete" do
    it "returns array with 'eat'" do
      task_tracker = TaskTracker.new
      task_tracker.add("eat")
      task_tracker.add("brush you're teeth")
      task_tracker.mark("brush you're teeth")
      expect(task_tracker.to_do).to eq ["eat"]
    end
  end

  context "marking a non existant task" do
    it "fails" do
      task_tracker = TaskTracker.new
      task_tracker.add("eat")
      expect{ task_tracker.mark("brush you're teeth") }.to raise_error "'brush you're teeth' is not in list."
    end
  end
end
