class Reporter
  require 'matrix'

    puzzle_input = File.open("./day_3_test_input.txt")


    data = puzzle_input.readlines(chomp: true)

    gamma_rate = ""
    epsilon_rate = ""
    power_consumption = 0
    returned_matrix = Matrix[]
    new_matrix = Matrix[]

    #Create a collection of each column
    #Find the most common bit
    #push the most common bit into a separate data structure

    data.each_with_index.map { |a, idx|

      row = a.split("").map(&:to_i)

      returned_matrix =
        if idx == 0
          Matrix.rows(new_matrix.to_a << row)
        else
          Matrix.rows(returned_matrix.to_a << row)
        end

    }


    i = 0

    while i < returned_matrix.column_size()
      bit = returned_matrix.column(i).max_by{ |bit| returned_matrix.column(i).count(bit)}
      gamma_rate = gamma_rate.concat(bit.to_s)
      i += 1
    end

    puts gamma_rate.to_i(2)
end

