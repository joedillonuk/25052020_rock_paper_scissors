require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test


def test_play_rock_vs_rock
  assert_equal("It's a draw! Both players chose rock!", Game.play("rock", "rock"))
end

def test_play_rock_vs_paper
  assert_equal("Rock loses to paper, player 2 wins!", Game.play("rock", "paper"))
end

def test_play_rock_vs_scissors
  assert_equal("Rock beats scissors, player 1 wins!", Game.play("rock", "scissors"))
end

def test_play_paper_vs_paper
  assert_equal("It's a draw! Both players chose paper!", Game.play("paper", "paper"))
end

def test_play_paper_vs_rock
  assert_equal("Paper beats rock, player 1 wins!", Game.play("paper", "rock"))
end

def test_play_paper_vs_scissors
  assert_equal("Paper loses to scissors, player 2 wins!", Game.play("paper", "scissors"))
end

def test_play_scissors_vs_scissors
  assert_equal("It's a draw! Both players chose scissors!", Game.play("scissors", "scissors"))
end

def test_play_scissors_vs_rock
  assert_equal("Scissors loses to rock, player 2 wins!", Game.play("scissors", "rock"))
end

def test_play_scissors_vs_paper
  assert_equal("Scissors beats paper, player 1 wins!", Game.play("scissors", "paper"))
end



end
