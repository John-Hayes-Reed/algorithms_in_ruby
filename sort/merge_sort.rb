require './merge/binary'
module Sort
  class MergeSort
    def self.call(list)
      return list if list.length <= 1 # Already Sorted

      left  = []
      right = []
      list.each_with_index do |list_item, i|
        receiver = i < (list.length / 2) ? :left : :right
        binding.local_variable_get(receiver).send :<<, list_item
      end

      Merge::Binary.call call(left), call(right)
    end
  end
end
