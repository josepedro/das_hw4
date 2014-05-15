class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError.new, "Strategy must be one of R,P,S" if player1[1] =~ /[^RPS]/ || player2[1] =~ /[^RPS]/
    
#    win = { "R" => "S", "P" => "R", "S" => "P" }
#    {true => player1, false => player2}[win[player1[1]] == player2[1]]
    
    return (player1[1] == "R" && (player2[1] == "R" || player2[1] == "S")) ||
            (player1[1] == "S" && (player2[1] == "S" || player2[1] == "P")) ||
            (player1[1] == "P" && (player2[1] == "P" || player2[1] == "R")) ? player1 : player2
  end

  def self.tournament_winner(tournament)
    if  tournament[0][0].is_a? String
        return self.winner(tournament[0], tournament[1])
    end
    return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end

end
