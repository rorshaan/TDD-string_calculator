# frozen_string_literal: true

class StringCalculator
  class << self
    def add(string_number = '')
      return 0 if string_number.empty?

      return 'Invalid Input' unless valid_input?(string_number)

      numbers = split_string(string_number, /,|\n/).map(&:to_i)
      negatives = numbers.select(&:negative?)
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers.sum
    end

    private

    def valid_input?(string_number)
      split_string(string_number, ',').select { |num| num.eql?("\n") }.empty?
    end

    def split_string(string_number, delimiter)
      string_number.split(delimiter)
    end
  end
end
