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
  end
end