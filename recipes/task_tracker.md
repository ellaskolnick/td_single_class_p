# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TaskTracker
  def initialize
    # ... array of tasks as an instance variable
  end

  def add(task) # task is a string
    # No return value unless string is empty then throw expection
  end

  def to_do
    # Throws an exception if no task is set
    # Otherwise, returns a list of strings
  end

  def mark(task)
    # Throws an exception if the task doesn't exist
    # Otherwise, no return value
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
task_tracker = TaskTracker.new
task_tracker.add("eat")
task_tracker.to_do # => ["eat"]

# 2
task_tracker = TaskTracker.new
task_tracker.to_do # fails with "No task set."

# 3
task_tracker = TaskTracker.new
task_tracker.add("eat")
task_tracker.add("brush you're teeth")
task_tracker.to_do # => ["eat", "brush you're teeth"]

# 4
task_tracker = TaskTracker.new
task_tracker.add("")
task_tracker.to_do # => fails with "Task cannot be an empty string."

# 5
task_tracker = TaskTracker.new
task_tracker.add("eat")
task_tracker.add("brush you're teeth")
task_tracker.mark("brush you're teeth")
task_tracker.to_do # => ["eat"]

# 6
task_tracker = TaskTracker.new
task_tracker.add("eat")
task_tracker.mark("brush you're teeth") # fails with "'brush you're teeth' is not in list."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
