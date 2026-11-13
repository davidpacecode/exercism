=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series

  def initialize(str)
    @str = str
  end

  def slices(len)

    chars = @str.chars
    strs = []
    (0..chars.length - len).each do | i |
      # strs << chars[i..i + len]
      puts "#{i} - #{chars[i..i + len - 1].to_s}"
      (i..i + len - 1).each do | c |
        @str << c
      end
    end
    strs
  end
end

x = '35'
puts x
actual = Series.new(x).slices(2)
puts actual
x = '35daasda'
puts x
actual = Series.new(x).slices(2)
puts actual
x = 'dadasdasdasda'
puts x
actual = Series.new(x).slices(2)
puts actual
