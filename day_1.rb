class DepthChecker

  def open_puzzle_data
    puzzle_input = File.open("./day_1_input.txt")
    data = puzzle_input.read.split
  end

  def check_depth(data)
    depth_increase_count = 0

    data.each_cons(2).map do |a, b|
      if b > a
        depth_increase_count += 1
      end
    end

    puts "Individual Count: #{depth_increase_count}"

  end

  def check_individual
    data = open_puzzle_data()
    check_depth(data)
  end

  def check_window
    data = open_puzzle_data()

    collection = data.each_cons(3).map do |a, b, c|
      a.to_i + b.to_i + c.to_i
    end

    check_depth(collection)
  end


end

NewChecker = DepthChecker.new()
NewChecker.check_individual()
NewChecker.check_window()
