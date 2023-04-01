class Solver
  def factorial(num)
    raise ArgumentError, 'number must be a non-negative integer' if num.negative?

    (1..num).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    # to be implemented
  end
end
