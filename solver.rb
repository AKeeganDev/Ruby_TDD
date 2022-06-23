class Solver
  def factorial (number)
    return 'invalid number' if number < 0
    return 1 if number == 0
    sum = 0;
    num_array = *(1..number)
    num_array.each{|number| sum += number}
    sum
  end

  def reverse(string)
    return 'Invalid input' unless string.kind_of?(String)
    string.reverse        
  end

  def fizzbuzz(n)
    return 'fizzbuzz' if (n % 5 == 0 and n % 3 == 0)
    return 'fizz' if (n % 3 == 0)
    return 'buzz' if (n % 5 == 0)
    

  end
end