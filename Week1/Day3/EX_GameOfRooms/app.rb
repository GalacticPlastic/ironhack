require_relative("lib/rooms.rb")
require_relative("lib/game.rb")
# require_relative("lib/races.rb")
# require_relative("lib/professions.rb")

# Add Chrono Trigger Wav Sounds!!
# require 'win32/sound'
# include Win32
# Sound.play('chimes.wav')
# Sound.play('c:\sounds\hal9000.wav')
puts""
puts"                             ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐      "
puts"                       - - - │││├┤ │  │  │ ││││├┤    │ │ │ - - -"
puts"                             └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘      "
puts""
puts"  ▓█████▄  ██▀███   ▄▄▄      ▄████  ▒█████   ███▄    █   ██████    ▓█████  ██▀███   ▄▄▄      "
puts"▒██▀ ██▌▓██ ▒ ██▒▒████▄     ██▒ ▀█▒▒██▒  ██▒ ██ ▀█   █ ▒██    ▒    ▓█   ▀ ▓██ ▒ ██▒▒████▄    "
puts"░██   █▌▓██ ░▄█ ▒▒██  ▀█▄  ▒██░▄▄▄░▒██░  ██▒▓██  ▀█ ██▒░ ▓██▄      ▒███   ▓██ ░▄█ ▒▒██  ▀█▄  "
puts"░▓█▄   ▌▒██▀▀█▄  ░██▄▄▄▄██ ░▓█  ██▓▒██   ██░▓██▒  ▐▌██▒  ▒   ██▒   ▒▓█  ▄ ▒██▀▀█▄  ░██▄▄▄▄██ "
puts"░▒████▓ ░██▓ ▒██▒ ▓█   ▓██▒░▒▓███▀▒░ ████▓▒░▒██░   ▓██░▒██████▒▒   ░▒████▒░██▓ ▒██▒ ▓█   ▓██▒"
puts" ▒▒▓  ▒ ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░ ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░   ░░ ▒░ ░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░"
puts" ░ ▒  ▒   ░▒ ░ ▒░  ▒   ▒▒ ░  ░   ░   ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒  ░ ░    ░ ░  ░  ░▒ ░ ▒░  ▒   ▒▒ ░"
puts" ░ ░  ░   ░░   ░   ░   ▒   ░ ░   ░ ░ ░ ░ ▒     ░   ░ ░ ░  ░  ░        ░     ░░   ░   ░   ▒   "
puts"   ░       ░           ░  ░      ░     ░ ░           ░       ░        ░  ░   ░           ░  ░"
puts" ░                                                                                           "

puts"                                  )       \\   /      ( "
puts"                                 /|\\      )\\_/(     /|\\ "
puts"                    *           / | \\    (/\\|/\\)   / | \\           *"
puts"                    |__________/__|__o____\\'|'/___o__|__\\__________|"
puts"                    |               '^`    \\|/   '^`               |"
puts"                    |                       V                      |"
puts"                    |                                              |"
puts"                    |            To Start Your Adventure,          |"
puts"                    |             Please Enter Your Name.          |"
puts"                    |                                              |"
puts"                    |______________________________________________|"
puts"                    |         l    /\\ /     \\\\     \\ / \\   l       |"
puts"                    *          l  /  V       ))     V   \\ l        *"
puts"                                l/          //           \\l "
puts"                                            V "
playername = nil
playername = gets.chomp
puts ""
puts "Welcome, #{playername}."
puts "It is time to embark on a new journey!"
puts ""
puts "Type [HELP] for commands or [QUIT] to end game."
user_input = nil
while user_input != "exit"
   
   user_input = gets.chomp
   puts ""

	if user_input.downcase == "help"
	    puts "Available commands:"
    	puts "- [CHARACTER] - Choose/View your character traits, including race, profession, and religion."
    	puts "- [WHERE] - Gives the description of where you currently are and any possible exits."
    	puts "- [COMPASS] - View compass and commands for navigating the world of Dragon's Era."
    	puts "- [COMMAND2] - Simple explanation of command."
    	puts "- [COMMAND3] - Simple explanation of command."
    elsif user_input.downcase == "quit"
    	puts "Thanks for Playing!"
    	puts "See you space cowboy."
	elsif user_input.downcase == "command1"
		puts "This will tell you what to do for Command #1."
	elsif user_input.downcase == "command2"
		puts "This will tell you what to do for Command #2."
	elsif user_input.downcase == "command3"
		puts "This will tell you what to do for Command #3."
	elsif user_input.downcase == "where"
		puts "This will give the description of where you currently are and any possible exits"
	else
		puts "Sorry, that is not an option."
	end
end


game = Game.new
game.add_room(room1)


































