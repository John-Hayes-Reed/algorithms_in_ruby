module Sorting
  # A service that executes a Selection Sort on any given list. Each item in the
  #   list must be comparable.
  class Selection
    # Sorts a list by splitting the list into two sections: an already sorted
    #   list built up from left to right at the front, and an unsorted list that
    #   occupies the rest of the list. These list are identified by the current
    #   iteration, ie. Anything to the left of i is sorted, everything else is
    #   yet to be checked. Therefore at the beginning of the algorithm the list
    #   can be seen as the sorted sublist being empty, and the unsorted list
    #   comprising of the whole list itself. On each iteration the algorithm
    #   finds the smallest element in the unsorted list (right side), and swaps
    #   it with the left most element of the unsorted list, making it the last
    #   and newest element in the sorted list.
    # @example using Integers
    #   Sorting::Selection.call [5, 3, 7, 3, 1, 4]
    #   #=> [1, 3, 3, 4, 5, 7]
    # @example Using Strings.
    #   Sorting::Selection.call ['b', 'e', 'a', 'a', 'a', 'f']
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
    #   Sorting::Selection.call [TestCompare.new(4),
    #                         TestCompare.new(2),
    #                         TestCompare.new(3)]
    #   #=> [#<TestCompa...@comp_val=2>, #<Te...@comp_val=3>, #<...@comp_val=4>]
    # @param list [Array] an unsorted list.
    # @param dir [Symbol] The operator to compare list elements with. Defaults
    #   to :< for an ascending sort, use :> for a descending sort.
    # @return [Array] The sorted list.
    def self.call(list, dir = :<)
      (n = list.length).times do |i|
        min = i
        (i + 1..n - 1).each { |j| min = j if list[j].send(dir, list[min]) }
        next if min == i

        x = list[i]
        list[i] = list[min]
        list[min] = x
      end

      list
    end
  end
end