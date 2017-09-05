module Sorting
  # A service that executes a bubble sort on any given list. Each item in the
  # list must be comparable.
  class Bubble
    # Iterates over an unsorted list swapping neighbouring elements of the list
    #   if they are unsorted as it goes. This task is repeated until an
    #   iteration with no swaps required has occurred.
    # @example using Integers
    #   Sorting::Bubble.call [5, 3, 7, 3, 1, 4]
    #   #=> [1, 3, 3, 4, 5, 7]
    # @example Using Strings.
    #   Sorting::Bubble.call ['b', 'e', 'a', 'a', 'a', 'f']
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
    #   Sorting::Bubble.call [TestCompare.new(4),
    #                         TestCompare.new(2),
    #                         TestCompare.new(3)]
    #   #=> [#<TestCompa...@comp_val=2>, #<Te...@comp_val=3>, #<...@comp_val=4>]
    # @param list [Array] An unsorted list.
    # @param dir [Symbol] the direction to sort the list, defaults to :> for an
    #   ascending sort, pass :< if a descending sort is desired.
    # @return [Array] The previously passed list parameter with its contents
    #   sorted.
    def self.call(list, dir = :>)
      loop do
        swapped = false
        (list.count - 1).times do |n|
          next unless (tmp = list[n]).send(dir, list[(m = n + 1)])
          swapped = (list[n] = list[m]) && (list[m] = tmp) # swap neighbours
        end
        break unless swapped # if a swap occurred, run another iteration.
      end
      list
    end
  end
end