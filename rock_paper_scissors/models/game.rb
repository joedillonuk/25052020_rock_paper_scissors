class Game

  def self.add(num1, num2)
    return num1 + num2
  end

  def self.subtract(num1, num2)
    return num1 - num2
  end

  def self.multiply(num1, num2)
    return num1 * num2
  end

  def self.divide(num1, num2)
    return num1 / num2
  end


  def self.play(choice1, choice2)
    if choice1 == "rock"
      case choice2
    when "rock"
      return "It's a draw! Both players chose rock!"
      when "paper"
        return "Rock loses to paper, player 2 wins!"
      when "scissors"
        return "Rock beats scissors, player 1 wins!"
      else
        return default
      end
    end

    if choice1 == "paper"
      case choice2
    when "paper"
      return "It's a draw! Both players chose paper!"
    when "rock"
        return "Paper beats rock, player 1 wins!"
      when "scissors"
        return "Paper loses to scissors, player 2 wins!"
      else
        return default
      end
    end

    if choice1 == "scissors"
      case choice2
      when "scissors"
      return "It's a draw! Both players chose scissors!"
      when "rock"
        return "Scissors loses to rock, player 2 wins!"
      when "paper"
        return "Scissors beats paper, player 1 wins!"
      else
        return default
      end

    end
  end


end
