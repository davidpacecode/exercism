=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  def initialize(matrix_string)
    @matrix = matrix_string.split("\n")
  end

  def row(row_num)
    @matrix[row_num - 1].to_s
  end

  def column(column_num)
    col = ""
    @matrix.each do | row |
#      col += row[column_num - 1]
      # puts row.to_s
    end
  end
end

mat = Matrix.new("1 2 3\n4 5 6\n7 8 9\n8 7 6")
puts "mat is:"
puts mat.to_s

puts "Row 3 is:"
puts mat.row(3)

puts "Column 3 is:"
puts mat.column(3)
