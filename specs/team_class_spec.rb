require('minitest/autorun')
require('minitest/rg')
require_relative('../team_class')

class TestTeam < MiniTest::Test
  def test_team_name
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    assert_equal("Dylan Panthers", team.name)
  end

  def test_team_players
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    assert_equal("Jack", team.players[1])
  end

  def test_add_new_player
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    team.add_new_player("Ken")
    assert_equal(5, players.count)
    assert_equal("Ken", team.players[4])
  end


  def test_check_player_in_array
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    assert_equal("Jill", team.player_in_array("Jill"))
  end

  def test_check_player_not_in_array
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    assert_equal(nil, team.player_in_array("Jeremy"))
  end

  def test_win
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    team.win
    assert_equal(1, team.points)
  end

  def test_lose
    players = ['John', 'Jack', 'Jill', 'Catherine']
    team = Team.new('Dylan Panthers', players, 'Harris', 0)
    team.lose
    assert_equal(-1, team.points)
  end


end
