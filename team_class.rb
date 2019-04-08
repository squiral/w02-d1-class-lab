class Team

attr_accessor :name, :players, :coach, :points


  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end


  def add_new_player(new_player)
    @players << new_player
  end

  def player_in_array(name)
    for player in @players
      if player == name
        return name
      end
    end

    return nil

  end

  def win
    @points += 1
  end

  def lose
    @points -= 1
  end



end
