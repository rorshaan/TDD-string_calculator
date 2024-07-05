# frozen_string_literal: true

class StringCalculator
  class << self
    attr_accessor :string_number

    def add(string_number = '')
      return 0 if string_number.empty?

      @string_number = string_number
      validate_numbers
    end

    private

    def validate_numbers
      return 'Invalid Input' unless valid_input?

      numbers = split_string(/,|\n/).map(&:to_i)
      negatives = numbers.select(&:negative?)
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers.sum
    end

    def valid_input?
      split_string(',').select { |num| num.eql?("\n") }.empty?
    end

    def split_string(str)
      string_number.split(str)
    end
  end
end
