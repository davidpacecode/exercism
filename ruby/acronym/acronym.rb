=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym

  def self.abbreviate(phrase)

    acronym = ""
    phrase.gsub('-', ' ').gsub(/[^a-z ]/i, '').split.each do |word|
      acronym += word[0]
    end
    acronym.upcase
  end

end

puts Acronym.abbreviate('Portable Network Graphics')
puts Acronym.abbreviate('Something - I made up from thin air')
puts Acronym.abbreviate('The Road _Not_ Taken')

