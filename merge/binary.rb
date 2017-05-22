module Merge
  class Binary
    def self.call(list_a, list_b, direction = :<)
      operand = :"#{direction}="
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
