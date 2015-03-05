class Game
	@@win_condition = false
	@@active_player = player1
	@@inactive_player = player2
	@@turn = 0
	
	def initialize

	end

	
	def start_game
		@@turn = 1
		while @@win_condition == false || @@turn < 9
			switch_turn unless @@turn == 1
			select_cell
			check_win
		end
	end

	def switch_turn
		change_active_player
		@@turn +=1
	end

	def change_active_player
		@@active_player, @@inactive_player = @@inactive_player, @@active_player
	end

	def select_cell
		get_input
		switch_cell_status
	end

	def get_input
		selected_cell = gets.chomp
	end

	def switch_cell_status
		selected_cell.status = @@active_player
	end

	def check_win
		selected_cell.contiguos_cells.each do |n|
			if selected_cell.status == n.status
				last_cell = 
				if selected_cell.status == x.status
					@@win_condition = true
					puts "#{@@active_player} win the game!"
				end
			end
		end
		check_final_turn	
	end

	def check_final_turn
		if @@turn == 9
			puts "We have a tie"
	end



	class Cell
		attr_accessor :reference, :status, :position

		def initialize (reference, status=nil, position)
			@reference = reference
			@position = position
		end

		def contiguos_cells
			cells = []
			if self.position[y] + 1 < "D"
				contig.reference = self.position[y+1] + self.position[x]
				cells << 
		end
	end

end