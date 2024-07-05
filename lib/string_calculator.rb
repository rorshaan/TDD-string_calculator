# frozen_string_literal: true

class StringCalculator
  class << self
    def add(string_number = '')
      return 0 if string_number.empty?

      numbers = string_number.split(',')
      valid_numbers = numbers.select { |num| num.eql?("\n") }

      return 'Invalid Input' unless valid_numbers.empty?
    end
  end
end
