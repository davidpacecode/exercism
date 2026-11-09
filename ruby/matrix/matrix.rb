=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  def initialize(matrix_string)
    @matrix = matrix_string.split("\n").map { | i | i.to_i }
  end

  def matrix
    @matrix
  end

  def row(row_num)
    @matrix[row_num - 1].to_s
  end

  def column(column_num)
    col = []
    @matrix.each do | row |
      col << row[column_num - 1].to_i
    end
    col
  end
end

mat = Matrix.new("1 2 3\n4 5 6\n7 8 9\n8 7 6")

row = 3
col = 3

puts mat.matrix
puts "Row #{row} is: #{mat.row(row)}"
puts "Col #{col} is: #{mat.column(col)}"

mat = Matrix.new("1")

row = 1
col = 1

puts "Row #{row} is: #{mat.row(row)}"
puts "Col #{col} is: #{mat.column(col)}"

