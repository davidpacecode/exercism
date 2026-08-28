
class SimpleCalculator

  class UnsupportedOperation < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)

    if ALLOWED_OPERATIONS.include?(operation) == false || operation.nil? || operation.empty?
      raise UnsupportedOperation.new("Unsupported Operation")
    end

    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      raise ArgumentError.new("Invalid Argument(s)")
    end

    if second_operand == 0 && operation == '/'
      return "Division by zero is not allowed."
    end

    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '/'
      "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    else
      raise ArgumentError.new("Invalid argument")
    end
  end
end

#begin
#  puts SimpleCalculator.calculate(22, 25, '+')
#  rescue => e
#    puts "Exception class: #{ e.class.name }"
#    puts "Exception Message:#{e.message}"
#end

begin
  puts SimpleCalculator.calculate(33, 0, "/")
  rescue => e
    "#{e.message}"
end

#begin
#  puts SimpleCalculator.calculate(5, 2, '-')
#  rescue => e
#    puts "Exception class: #{ e.class.name }"
#    puts "Exception Message:#{e.message}"
#end
#
#begin
#  puts SimpleCalculator.calculate('t', 2, '*')
#  rescue => e
#    puts "Exception class: #{ e.class.name }"
#    puts "Exception Message:#{e.message}"
#end
#
#begin
#  puts SimpleCalculator.calculate(5, 0, '/')
#  rescue => e
#    puts "Exception class: #{ e.class.name }"
#    puts "Exception Message:#{e.message}"
#end
