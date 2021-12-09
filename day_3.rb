class Reporter
  require 'matrix'

    puzzle_input = File.open("./day_3_test_input.txt")


    data = puzzle_input.readlines(chomp: true)

    gamma_rate = 0
    epsilon_rate = 0
    power_consumption = 0
    new_matrix = Matrix[]

    #Create a collection of each column
    #Find the most common bit
    #push the most common bit into a separate data structure

    data.each_with.index.map { |a, idx|


      row = a.split("").map(&:to_i)

      #puts row.inspect

      if idx == 0
        returned_matrix = Matrix.rows(new_matrix.to_a << row)
      else
        returned_matrix = Matrix.rows(returned_matrix.to_a << row)
      end

      puts returned_matrix.inspect
    }



end

