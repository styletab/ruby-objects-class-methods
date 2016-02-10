![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Class Methods

## Objectives

By the end of this, students should be able to:

-   Give an example of a class method you already use.
-   Diagram the invocation pattern between `#initialize` and `.new`.
-   Contrast defining class methods with defining instance methods.
-   Contrast invoking class methods with invoking instance methods.

## Class methods and instance variables on a class

Sometimes a method or a variable is associated with a class, not an object.

For example, we may want to count cats for each Cat object we create.

```ruby

class Cat
  @cat_number = 0

  def intiailize
    @cat_number = self.class.add_cat
  end

  def self.add_cat
    @cat_number += 1
  end

  def cat_number
    @cat_number
  end
end

```

Look at the code above. We've used instance variables inside instance methods. What do instance variables inside classes do? This could uses a counter variable on the **instance of the class**, so each time a new cat is created, we get closer to becoming crazy cat people.


## Additional Resources


- Item 1
- Item 2
- Item 3

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
