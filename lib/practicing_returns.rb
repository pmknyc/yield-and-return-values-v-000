require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end


# call the method and give a block to execute
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
#return value of above block is the "Hi, #{name}" output
# the method produces as many return values as size of array/collection
# but in version at top the return values aren't captured/saved

# this revised method shovels return values of the yield
# into a new array when the method is run
def hello_save(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
end
