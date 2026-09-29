# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10.00 : 15.00
  end

  def watch_scary_movie?
    @age >= 18 ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member ? "🍿" : raise(NotMovieClubMemberError.new("No popcorn for you!"))
  end
end


puts Moviegoer.new(21).ticket_price
#=> 15

puts Moviegoer.new(65).ticket_price
#=> 10


puts Moviegoer.new(21).watch_scary_movie?
#=> true

puts Moviegoer.new(17).watch_scary_movie?
#=> false

puts Moviegoer.new(21, member: true).claim_free_popcorn!
#=> 🍿

puts Moviegoer.new(17, member: false).claim_free_popcorn!
#=> Exception was raised! (NotMovieClubMemberError)

