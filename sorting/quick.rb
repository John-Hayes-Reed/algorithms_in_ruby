module Sorting
  # A service that executes a quick sort on any given list. Each item in the
  # list must be comparable.
  class Quick
    # Takes a list and partitions it into two lists by comparing each element of
    #   the list against a given pivot and seeing if it is smaller than the
    #   pivot or not. It the proceeds to recursively quick sort the resulting
    #   'left' and 'right' arrays returning a merge of the quick sorted left,
    #   pivot element, and quick sorted right.
    # @see https://en.wikipedia.org/wiki/Quicksort
    # @example using Integers
    #   Sorting::Quick.call [5, 3, 7, 3, 1, 4]
    #   #=> [1, 3, 3, 4, 5, 7]
    # @example Using Strings.
    #   Sorting::Quick.call ['b', 'e', 'a', 'a', 'a', 'f']
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
    #   Sorting::Quick.call [TestCompare.new(4),
    #                        TestCompare.new(2),
    #                        TestCompare.new(3)]
    #   #=> [#<TestCompa...@comp_val=2>, #<Te...@comp_val=3>, #<...@comp_val=4>]
    # @param list [Array] An unsorted list.
    # @return [Array] The sorted list.
    def self.call(list)
      return list unless list.length > 1
      pivot = list[0]
      left, right = list[1..-1].partition { |list_item| list_item < pivot }
      call(left) + [pivot] + call(right)
    end
  end
end