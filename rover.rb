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
          turn("L")
        elsif character == "R"
          turn("R")
        else
          puts "Improper input"
        end
        puts "The new rover position is #{ @x } and #{ @y}
        with the direction of #{ @direction }"
      end
  end

  def move
    case @direction
    when "N"
      @y += 1
    when "E"
      @x += 1
    when "S"
      @y -= 1
    when "W"
      @x -= 1
    end
  end

  def turn(answer)
    if answer == "L"
      case @direction
      when "N"
        @direction = "W"
      when "W"
        @direction = "S"
      when "S"
        @direction = "E"
      when "E"
        @direction = "N"
      end
    end
    if answer == "R"
      case @direction
      when "N"
        @direction = "E"
      when "E"
        @direction = "S"
      when "S"
        @direction = "W"
      when "W"
        @direction = "N"
      end
    end
  end

end
