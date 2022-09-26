# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize
    # ... array of tracks as an instance variable
  end

  def add(track) # task is a string
    # No return value unless string is empty then throw expection
  end

  def my_tracks
    # Throws an exception if no track is set
    # Otherwise, returns a list of strings
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
music_tracker = MusicTracker.new
music_tracker.add("Sign of the Times")
music_tracker.my_tracks # => ["Sign of the Times"]

# 2
music_tracker = MusicTracker.new
music_tracker.my_tracks # fails with "No tracks set."

# 3
music_tracker = MusicTracker.new
music_tracker.add("Watermelon Sugar")
music_tracker.add("Music for a Sushi Restaurant")
music_tracker.my_tracks # => ["eat", "brush you're teeth"]

# 4
music_tracker = MusicTracker.new
music_tracker.add("") # => fails with "Track cannot be an empty string."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
