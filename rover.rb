class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def user_input
    puts "How would you like to move?"
      answer = gets.chomp
      answer.each_char do |character|
        if character == "M"
          move
        elsif character == "L"
          turn
        elsif character == "R"
          turn
        else
          puts "Improper input"
        end
      end
  end

  def move(answer)

  end

  def turn(answer)

  end

end
