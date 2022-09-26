class TaskTracker
  def initialize
    @tasks = []
  end

  def add(task) # task is a string
    fail "Task cannot be an empty string." if task == "" || task == " "
    @tasks << task
  end

  def to_do
    fail "No task set." if @tasks.empty?
    @tasks
  end

  def mark(task)
    fail "'#{task}' is not in list." if !(@tasks.include?(task))
    index = @tasks.find_index(task)
    @tasks.delete_at(index)
  end
end
