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

For example, we may want to generate id's for each Person object we create. So,
we'll create an attribute that is shared by all Person instances. This is called
a **class instance variable.**

```ruby
class Person
  # class variable that will keep a running count
  # of all the people created.
  @person_counter = 0
...
```

And if we want to create a method that is shared by all Person instances we can
create a **class method**.

```ruby
class Person
  # class variable that will keep a running count
  # of all the people created.
  @@person_counter = 0

  # use the person counter to generate an unique ID for
  # each person.
  def self.getID #Class method
    @person_counter += 1
  end

  # Same as above, you know why right?
  # def Person.getID
  #  @person_counter += 1
  # end

  attr_reader :first_name, :status, :id

  def initialize(fname, lname)
	...
	# set this person's ID using the class method
   @id = Person.getID
  end

```



## Additional Resources

List additional related resources such as videos, blog posts and official documentation.

- Item 1
- Item 2
- Item 3

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
