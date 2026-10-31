=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse.first(3)
  end

  def latest_is_personal_best?
    self.latest == self.personal_best
  end
end

scores = [30, 50, 20, 70]
puts HighScores.new(scores).scores
puts HighScores.new(scores).latest
puts HighScores.new(scores).personal_best
puts HighScores.new(scores).personal_top_three
puts HighScores.new(scores).latest_is_personal_best?


