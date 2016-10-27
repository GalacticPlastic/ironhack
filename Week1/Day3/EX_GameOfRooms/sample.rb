class GameOfRooms

  def initialize
    @rooms = [Room.new("Dark", {"north" => "Forest", "south" => "Green"}), 
              Room.new("Green", {"north" => "Dark", "right" => "Blue"}),
              Room.new("Blue", {"left" => "Green", "right" => "Forest"}),
              Room.new("Forest", {"south" => "Dark", "left" => "Blue"})]
    @movements = {"N"=> "north","S"=>"south","E"=>"right","W"=>"left"}
    @orders = ["Dance", "Sing"]
  end

  def start
    color_rooms = @rooms.clone
    color_rooms.delete_at(3)
    @current_room = color_rooms.shuffle.first
    puts "****Welcome to the Game of rooms****"
    puts "You have 4 characters for movement 'N', 'S', 'E' and 'W'"
    puts "You can 'Dance' and 'Sing'"
    @current_room.instructions
    user_input
  end

  private

  def user_input
      puts ">"
      @input = gets.chomp
      movement = @movements[@input]
      if @current_room.options.has_key? movement       
        @rooms.each do |room| 
          if room.name == @current_room.options[movement] 
            @current_room = room
          end
        end
        continue       
      else
        orders
      end
  end

  def continue
    @current_room.instructions
    user_input
  end

  def orders
    if @input == "Dance"
      puts "Time is running out"
      continue
    elsif @input == "Sing"
      game_over       
    else
    no_sense_order
    continue 
    end
  end

  def no_sense_order
    puts "I don't understand"
  end

  def game_over
    puts "The bear wakes up and kills you. Game over."
  end 
  
end

class Room
  attr_accessor :name
  attr_accessor :options

  def initialize (name, options)
    @name = name
    @options = options
  end

  def instructions
    if @name == "Forest"
      puts "You are in the forest. There is a lot of light. There is a bear sleeping"
    else
      puts "You are in the #{@name} room."
      puts "There is a door at the #{@options.keys[0]}"
      puts "There is a door at the #{@options.keys[1]}"
    end  
  end
end
  
game = GameOfRooms.new
game.start
