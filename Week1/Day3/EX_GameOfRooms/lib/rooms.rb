# class GameRooms
# 	def displayLocation()
# 		# Display the Room Name:
# 			# puts "#{GameRooms[room_name][:name]}""
# 			# puts "=========================="
# 			# puts ""
# 		# Display the Room's Description:
# 			# puts "#{GameRooms[room_name][:description]}""
# 			# puts ""
# 		# Display All Items Available:
# 		# if GameRooms[room_name][item_list] > 0
# 			# for item in GameRooms[room_name][:item_list]
# 				# puts "#{GameItems[item_name][:description]}""
# 				# puts ""
# 			# end
# 		# end
# 	end
# end

# class GameItems
	# def MethodName
	# end
# end


# town_square = {
# 	:name => "Town Square"
# 	:location => "You are at the Town Square in Port Kell."
# 	:description => "The Town Square is a large open space with a fountain in the center. Streets lead in all directions.",
# 	:item_list => ["large fountain", "shrouded figure", "shady tree"],
# 	:northwest => "",
# 	:north => "",
# 	:northeast => "",
# 	:west => "",
# 	:east => "",
# 	:southwest => "",
# 	:south => "",
# 	:southeast => "",
# }
# sample_item = {
# 	:name => "",
# 	:found => "",		# Text declaring item in room.
# 	:description => "",	# Long item description.
# 	:take => True,		# Boolean true or false.
# }

# ##------- MUD ROOM REF -------##
# # worldRooms = {
# #     'Room Name': {
# #         DESC: 'Description of room.',
# #         NORTH: 'Name of room to the north.',
# #         GROUND: ['Name of an item on the ground in this room', 'Another item name']
# #     },
# #         ...
# # }

# # worldItems = {
# #     'Item Name': {
# #         GROUNDDESC: 'How this item is described when on the ground.',
# #         SHORTDESC: 'A short description of this item.',
# #         LONGDESC: 'A long description of this item, used when the player looks at it.',
# #         TAKEABLE: True, # whether this item can be taken and put in your inventory
# #         DESCWORDS: ['a word the player can use to refer to this item', 'another word']
# #     },
# #         ...
# # }