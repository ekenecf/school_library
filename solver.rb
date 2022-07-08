class Solver
    def factorial(number)
      return 'Can not have factorial of a negative number' if number.negative?
      return 1 if number.zero?
  
      number * factorial(number - 1)
    end