require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_rock_scissors()
    assert_equal("rock wins", who_won(rock, scissors))
  end

  def test_rock_paper()
    assert_equal("paper wins", who_won(rock, paper))
  end
  def test_rock_rock()
    assert_equal("draw", who_won(rock, rock))
  end
  def test_scissors_rock()
    assert_equal("rock wins", who_won(scissors, rock))
  end
  def test_scissors_paper()
    assert_equal("scissors wins", who_won(scissors, paper))
  end
  def test_scissors_scissors()
    assert_equal("draw", who_won(scissors, scissors))
  end
  def test_paper_rock()
    assert_equal("paper wins", who_won(paper, rock))
  end
  def test_paper_scissors()
    assert_equal("scissors wins", who_won(paper, scissors))
  end
  def test_paper_paper()
    assert_equal("draw", who_won(paper, paper))
  end
end
