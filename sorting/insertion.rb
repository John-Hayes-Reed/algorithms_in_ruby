module Sorting
  # @abstract a Service that executes an Insertion Sort on any given list. Each
  #   item in the list must be comparable.
  class Insertion
    # Insertion sort takes a list, and splits it into two sections: an already
    #   sorted list built up from the left to right at the front, and an
    #   unsorted list that occupies the rest of the list. Therefore at the
    #   beginning of the algorithm the list can be seen as the sorted sublist
    #   being empty, and the unsorted list comprising of the whole list itself.
    #   The algorithm itself iterates over a list, on each iteration, insertion
    #   sort removes the left most element of the unsorted list finds the
    #   location it belongs to within the sorted list and inserts it there.
    # @see https://en.wikipedia.org/wiki/Insertion_sort
    # @example using Integers
    #   Sorting::Insertion.call [5, 3, 7, 3, 1, 4]
    #   #=> [1, 3, 3, 4, 5, 7]
    # @example Using Strings.
    #   Sorting::Insertion.call ['b', 'e', 'a', 'a', 'a', 'f']
    #   #=> ['a', 'a', 'a', 'b', 'e', 'f']
    # @example Using custom comparable class instances.
    #   class TestCompare
    #     include Comparable
    #     attr_accessor :comp_val
    #
    #     def initialize(val)
    #       @comp_val = val
    #     end
    #
    #     def <=>(other)
    #       comp_cal <=> other.comp_val
    #     end
    #   end
    #
    #   Sorting::Insertion.call [TestCompare.new(4),
    #                            TestCompare.new(2),
    #                            TestCompare.new(3)]
    #   #=> [#<TestCompa...@comp_val=2>, #<Te...@comp_val=3>, #<...@comp_val=4>]
    # @param list [Array] an unsorted list.
    # @return [Array]
    def self.call(list)
      i = 1
      while i < list.length
        x = list[i] # The leftmost element of the unsorted list.
        j = i - 1 # j is the index of the rightmost element in sorted list.

        # Keep moving sorted elements up an index while they are larger then the
        #   unsorted element currently being looked at.
        (list[j + 1] = list[j]) && j -= 1 while j >= 0 && list[j] > x
        (list[j + 1] = x) && i += 1 # Insert the element in its sorted position.
      end
      list # Return the list. (not really required as method is destructive).
    end
  end
end