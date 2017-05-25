module Searching
  module Sequence
    # TODO: incorrect cannot use recursion, as the index, not the object itself is needed.
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
