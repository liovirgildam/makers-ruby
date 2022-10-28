# Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 5 words a minute.

## 2. Design the Method Signature

Method - reading_time (Integer)
Parameters - text (String) 

```ruby
# EXAMPLE

# `reading_time` gives an estimate of reading time for a text, assuming the person can read 5 words a minute.
estimate_time = reading_time(text)

text: a string (e.g. "Text with more than five words")
estimate_time: 2

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("Hello world, I am a software developer student and I love learning new things.") => 3
reading_time("Hello world!") => 1
reading_time("") => 0
reading_time(nil) throws an error
```