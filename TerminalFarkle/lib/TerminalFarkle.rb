# frozen_string_literal: true

require_relative "TerminalFarkle/version"

module TerminalFarkle
  class Game
    attr_accessor :dice

    def initialize
      @dice = []
    end

    def rollDice
      @dice = []
      6.times { dice << rand(1..6) }
      puts dice
    end

    def countDice
      @ones = @dice.count(1)
      @twos = @dice.count(2)
      @threes = @dice.count(3)
      @fours = @dice.count(4)
      @fives = @dice.count(5)
      @sixes = @dice.count(6)
      puts "Ones: #{@ones}, Twos: #{@twos}, Threes: #{@threes}, Fours: #{@fours}, Fives: #{@fives}, Sixes: #{@sixes}"
    end

    def checkPoints
      if @ones == 1
        puts "you have a 100 points"
        @points += 100
      else 
        puts "you have no points"
      end
    end
  end

  class GameLogic
    attr_accessor :points

    def initialize
      game = TerminalFarkle::Game.new
      game.rollDice
      game.countDice
      game.checkPoints
    end
  end

  class PlayGame

    def play
      puts "welcome to TerminalFarkle"
      loop do
        puts "Would you like to roll the dice? (y/n)"
        choice = gets.chomp.downcase
    
        if choice == "y"
          game = TerminalFarkle::Game.new
          game.rollDice
          game.countDice
          game.checkPoints

        elsif choice == "n"
          puts "Okay, thanks for playing!"
          break
        else
          puts "Invalid choice, please try again."
          exit
        end
      end
    end
  end
end

#game = TerminalFarkle::GameLogic.new
#game.checkPoints
#game.rollDice
#game.countDice

playgame = TerminalFarkle::PlayGame.new
playgame = playgame.play