class Solver
  def factorial(number)
    return 'invalid number' if number.negative?
    return 1 if number.zero?

    sum = 0
    num_array = *(1..number)
    num_array.each { |num| sum += num }
    sum
  end

  def reverse(string)
    return 'Invalid input' unless string.is_a?(String)

    string.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 5).zero? and (number % 3).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end
