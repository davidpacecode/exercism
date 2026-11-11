=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  def initialize(matrix_string)
    @matrix = matrix_string.split('n')
  end

  def matrix
    @matrix
  end

  def row(row_num)
    row = []
    @matrix[row_num - 1].split(' ').each do | char |
      row << char.to_i
    end
    row
  end

  def column(column_num)
    col = []
    @matrix.each do | row |
      col << row[column_num - 1].to_i
    end
    col
  end
end

puts
puts
puts

mat = Matrix.new("1 2 3n4 5 6n7 8 9n8 7 6")

row = 3
col = 3

puts "mat.is_a? Array: #{mat.is_a? Array}"
puts "mat.row(row).is_a? Array: #{mat.row(row).is_a? Array}"
puts "mat.column(col).is_a? Array: #{mat.column(col).is_a? Array}"
puts mat.matrix
puts "Row #{row} is: #{mat.row(row)}"
puts "Col #{col} is: #{mat.column(col)}"

puts
puts
puts

mat = Matrix.new("1")

row = 1
col = 1

puts mat.matrix
puts "Row #{row} is: #{mat.row(row)}"
puts "Col #{col} is: #{mat.column(col)}"

puts
puts
puts

