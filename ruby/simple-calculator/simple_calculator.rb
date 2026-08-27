class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      puts "you fucked up"
      return
    end

    case operation
    when '+'
      puts "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '/'
      puts "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
    when '*'
      puts "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    else
      raise ArgumentError.new("Invalid argument")
    end
  end
end

puts SimpleCalculator.calculate(5, 2, '+')
