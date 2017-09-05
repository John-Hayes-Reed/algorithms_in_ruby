require './merging/binary'
module Sorting
  # A Service that executes a Merge Sort on any given list. Each item
  #   in the list must be comparable.
  class Merge
    # Splits an unsorted list up into multiple sorted lists
    #   (ie. single value list = sorted) and BinaryMerges them back into a
    #   single sorted list.
    #
    # @example Using Integers.
    #   Sorting::Merge.call [5, 3, 7, 3, 1, 4]
    #   #=> [1, 3, 3, 4, 5, 7]
    # @example Using Strings.
    #   Sorting::Merge.call ['b', 'e', 'a', 'a', 'a', 'f']
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
    #   Sorting::Merge.call [TestCompare.new(4),
    #                        TestCompare.new(2),
    #                        TestCompare.new(3)]
    #   #=> [#<TestCompa...@comp_val=2>, #<Te...@comp_val=3>, #<...@comp_val=4>]
    # @param list [Array] An unsorted list
    # @param dir [Symbol] the direction to sort the list, defaults to :< for an
    #   ascending sort, pass :> if a descending sort is desired
    # @return [Array] A sorted list
    def self.call(list, dir = :<)
      return list if list.length <= 1 # Already Sorted

      left  = []
      right = []
      list.each_with_index do |list_item, i|
        receiver = i < (list.length / 2) ? :left : :right
        binding.local_variable_get(receiver).send :<<, list_item
      end

      Merging::Binary.call call(left), call(right), dir
    end
  end
end
