# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # 1st diagonal
  [2, 4, 6], # 2nd diagonal
  ]
  
  # won? method
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination| 
      win_index1 = win_combination[0]
      win_index2 = win_combination[1]
      win_index3 = win_combination[2]
      
      position1 = board[win_index1]
      position2 = board[win_index2]
      position3 = board[win_index3]
      
      if (position1 == "X" && position2 == "X" && position3 == "X") || (position1 == "O" && position2 == "O" && position3 == "O")
        return win_combination
      else
        false
    end
  end