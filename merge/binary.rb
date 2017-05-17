module Merge
  class Binary
    def self.call(list_a, list_b, direction = :<)
      operand = :"#{direction}="
      [].tap do |output|
        until list_a.empty? || list_b.empty?
          output.push(if list_a.first.send(operand, list_b.first)
                        list_a.shift
                      else
                        list_b.shift
                      end)
        end
        list_a.inject(output) { |o, a_item| o.push a_item } unless list_a.empty?
        list_b.inject(output) { |o, b_item| o.push b_item } unless list_b.empty?
      end
    end

    a = [1, 3, 4, 5, 6, 8]
    b = [3, 3, 4, 4, 5, 6, 7, 8, 9]

    puts call a, b
  end
end
