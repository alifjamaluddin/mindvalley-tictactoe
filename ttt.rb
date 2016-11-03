class TicTacToe
	
	def initialize(player, board_size=3)
		@player = player
		@board_size = board_size
		@board = []
		@board_size.times do |x| #row
			sub_board = []
			@board_size.times do |y| # column
				sub_board.push("#{x},#{y}")
			end
			@board.push(sub_board)
 		end

	end

	def start_game

	end

	def display
		@board_size.times do |x| #row
			@board_size.times do |y| #col
				puts @board[x][y]
			end
		end
	end

	def player_move(row,col)
		@board[row][col] = "X"
	end

	def computer_move
		
	end

	def win_horizontally
			@board_size.times do |x| #row
			row = []
				@board_size.times do |y| #col
					puts @board[x][y]
					row.push(@board[x][y])
				end
				puts "\n"
				if all_equal?(row)
				puts "WIN win_horizontally"
				end
			end
	end

	def win_vertically
			@board_size.times do |x| #row
				col = []
				@board_size.times do |y| #col
					puts @board[y][x]
					col.push(@board[y][x])
				end
				puts "\n"
				if all_equal?(col)
					puts "WIN win_vertically"
				end
			end
	end

	def win_diagonally
			val = []
			@board_size.times do |x|
				val.push(@board[x][x])
			end
			if all_equal?(val)
				puts "WIN Diagonally 1"
			end

			val = []
			(@board_size-1).downto(0) do |x|
				@board_size.times do |y|
					val.push(@board[x][y])
				end
			end
			if all_equal?(val)
				puts "WIN Diagonally 2"
			end
	end

	def all_equal?(arr)
    arr.uniq.size == 1
	end

	def win?
		if win_horizontally
			puts "Win vertically"
		elsif win_horizontally
			puts "Win Horizontally"
		elsif win_diagonally
			puts "Win diagonally"
		else
			puts "Continue"
		end
	end
end