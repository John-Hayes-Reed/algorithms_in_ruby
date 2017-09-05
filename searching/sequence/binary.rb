module Searching
  module Sequence
    # Performs a binary search for a given target on a sorted list
    #   and returns the index it is found at.
    #
    # @param target [*] The target to search for.
    # @param list [Array] The list upon which to perform the search.
    #
    # @return [Integer] The index of the target if found.
    # @return [nil] if the target is not in the list.
    class Binary
      def self.call(target, list = [])
        left = 0
        right = list.length - 1
        m = 0
        until list[m] == target
          return if left > right

          m = (left + right) / 2

          return m if list[m] == target
          left = m + 1 if list[m] < target
          right = m - 1 if list[m] > target
        end
      end
    end
  end
end
