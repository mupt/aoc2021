class Plotter

  def determine_position
    #puzzle_input = File.open("./day_2_test_input.txt")
    puzzle_input = File.open("./day_2_input.txt")

    data = puzzle_input.readlines(chomp: true)

    horizontal_position = 0
    depth = 0
    aim = 0


    #down X increases your aim by X units.
    #up X decreases your aim by X units.
    #forward X does two things:
    #    It increases your horizontal position by X units.
    #    It increases your depth by your aim multiplied by X.



    data.map { |a|
      if a.split("").first == "f"

        horizontal_position = horizontal_position + a.split("").last.to_i

        depth = depth + (aim * a.split("").last.to_i)

      elsif a.split("").first == "u"

        #depth = depth - a.split("").last.to_i

        aim = aim - a.split("").last.to_i

      elsif a.split("").first == "d"

        aim = aim + a.split("").last.to_i

        #depth = depth + a.split("").last.to_i

      end
    }

    puts "Horizontal position: #{horizontal_position}\n
            Depth: #{depth}\n
            aim: #{aim}\n
            Final answer: #{depth * horizontal_position}"

    # create object to hold in memory
    # skip to space, take next character
    # if F or D or U do something different


  end

end

NewPlotter = Plotter.new
NewPlotter.determine_position()
