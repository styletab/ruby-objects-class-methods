![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Assignment Name (Ruby String Lab)

## Objectives

## Class variables and methods

Sometimes a method or a variable is associated with a class, not an object.

For example, we may want to generate id's for each Person object we create. So,
we'll create an attribute that is shared by all Person instances. This is called
a **class variable.**

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
  @person_counter = 0

  # use the person counter to generate an unique ID for
  # each person.
  def self.getID
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
