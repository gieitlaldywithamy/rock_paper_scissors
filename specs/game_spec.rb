require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_rock_scissors()
    game = Game.new("rock", "scissors")
    assert_equal("win", game.play())
  end

  def test_rock_paper()
    game = Game.new("rock", "paper")
    assert_equal("lose", game.play())
  end
  def test_rock_rock()
    game = Game.new("rock", "rock")
    assert_equal("tie", game.play())
  end
  def test_scissors_rock()
    game = Game.new("scissors", "rock")
    assert_equal("lose", game.play())
  end
  def test_scissors_paper()
    game = Game.new( "scissors", "paper")
    assert_equal("win", game.play())
  end
  def test_scissors_scissors()
    game = Game.new("scissors", "scissors")
    assert_equal("tie", game.play())
  end
  def test_paper_rock()
    game = Game.new("paper", "rock")
    assert_equal("win", game.play())
  end
  def test_paper_scissors()
    game = Game.new("paper", "scissors")
    assert_equal("lose", game.play())
  end
  def test_paper_paper()
    game = Game.new("paper", "paper")
    assert_equal("tie", game.play())
  end
end
