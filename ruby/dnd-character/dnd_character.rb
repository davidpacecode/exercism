=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  
  attr_accessor :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def self.modifier(constitution)
    ((constitution - 10)/2).floor
  end

  def initialize
    @strength = top_three_rolls.sum
    @dexterity = top_three_rolls.sum
    @constitution = top_three_rolls.sum
    @intelligence = top_three_rolls.sum
    @wisdom = top_three_rolls.sum
    @charisma = top_three_rolls.sum


    @hitpoints = ((@constitution - 10)/2).floor + 10
  end

  def top_three_rolls
    rolls = []
    4.times do
      rolls << rand(1..6)
    end
    rolls.max(3)
  end
end

# - A static method for `modifier(constitution)`.
# - Methods for `strength`, `dexterity`, `constitution`, `intelligence`, `wisdom`, `charisma`, and `hitpoints`
# puts DndCharacter.modifier(3)
# puts DndCharacter.new.hitpoints
