![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Class Methods

## Objectives

By the end of this, students should be able to:

-   Give an example of a class method you already use.
-   Diagram the invocation pattern between `#initialize` and `.new`.
-   Contrast defining class methods with defining instance methods.
-   Contrast invoking class methods with invoking instance methods.

## Class Methods

Sometimes a method is associated with a class, not an object.

Let's discuss the code below:

```ruby
class FullCat
  def self.mouse
    puts "I'm in the cats stomach"
  end

  def escape_mouse
    puts 'I escaped the cat'
  end
end
```

## Lab: Making Class Methods

- Make a class for an animal aside from a cat
- Create at least two instance methods
- Create at least two class methods
- Bonus: Have an instance method call a class method

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
