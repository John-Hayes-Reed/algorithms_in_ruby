module Merging
  # A Service for taking two sorted list, and merging them into a
  #   single sorted list. Each item in the lists must be comparable, ie. It must
  #   respond to and implement the Ruby comparison methods
  #   (:<, :<=, :==, :>=, :>, :<=>), at the very least they should implement the
  #   default :<
  class Binary
    # Takes sorted lists and merges them into a single sorted list.
    #
    # @example using Integers
    #   Merging::Binary.call [1, 3, 5], [2, 4, 6]
    #   #=> [1, 2, 3, 4, 5, 6]
    #
    # @example using Strings
    #   Merging::Binary.call ['a', 'c'], ['b', 'd']
    #   #=> ['a', 'b', 'c', 'd']
    #
    # @example using a custom comparable class
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
    #   a = TestCompare.new(1); b = TestCompare.new(2); c = TestCompare.new(3)
    #
    #   Merging::Binary.call [a, c], [b]
    #   #=> [a, b, c]
    #
    # @example using Integers with a descending direction
    #   Merging::Binary.call [5, 3, 1], [6, 4, 2], :>
    #   #=> [6, 5, 4, 3, 2, 1]
    #
    # @param list_a [Array] A sorted array
    # @param list_b [Array] A sorted array
    # @param dir [Symbol] the direction to sort the list, defaults to :< for an
    #   ascending sort, pass :> if a descending sort is desired
    #
    # @return [Array] A sorted array containing the content of list_a and list_b
    def self.call(list_a, list_b, dir = :<)
      operand = :"#{dir}="
      [].tap do |output|
        until list_a.empty? || list_b.empty?
          to_shift = list_a.first.send(operand, list_b.first) ? :a : :b
          output.push(binding.local_variable_get(:"list_#{to_shift}").shift)
        end
        output.push(*list_a) unless list_a.empty?
        output.push(*list_b) unless list_b.empty?
      end
    end
  end
end
