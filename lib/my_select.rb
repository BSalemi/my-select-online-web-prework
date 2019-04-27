require 'pry'

def my_select(collection)
  selection = []
    i = 0
    while i < collection.length
      if yield(collection[i]) == true
        binding.pry
        selection << yield(collection[i])
      end
      i += 1
    end
    selection
end
