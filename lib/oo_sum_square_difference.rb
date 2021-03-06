# Implement your object-oriented solution here!

class SumSquareDifference
  
  def initialize(max)
    @max = max
  end
  
  def difference
    naturals = (1..@max).to_a
    squares = [1]
    
    sum = naturals.inject do |s, n|
      squares << n * n
      s + n
    end
    
    square_of_sum  = sum * sum
    sum_of_squares = squares.inject { |s, n| s + n }
    difference = square_of_sum - sum_of_squares
    
    difference
  end
  
end
