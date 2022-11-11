class JumpingGame

    START_POSITION = 0

    def start(*args)
        array = *args

        array.each do |n|
            if !n.is_a?(Integer) 
                puts "Not an int"
                return
            end
        end

        game_loop(array, START_POSITION, [START_POSITION]) unless array.empty?
    end
    
    private

    def game_loop(array, position, visited_positions)

        value = array[position]

        visited_positions.push(position)
        current_position = position + value
        
        if value == 0
            puts_result("dry")
            return
        elsif current_position < 0 ||  current_position > array.length - 1
            puts_result("wet")
            return
        elsif visited_positions.include? current_position
            puts_result("dry")
            return
        end

        game_loop(array, current_position, visited_positions)
    end

    def puts_result(result)

        case result
        when "dry"
            puts "The player stays dry."
        when "wet"
            puts "The player gets wet!"
        end
        
    end

end