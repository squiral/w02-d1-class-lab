class Team

attr_accessor :name, :players, :coach


  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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



end
