# frozen_string_literal: true

require_relative "TerminalFarkle/version"
require_relative "Dice.rb"
#require_relative "GameLogic.rb"

module TerminalFarkle
  class PlayGame
    attr_accessor :points

    def initialize
        @points = 0
    end

    def play
      puts "welcome to TerminalFarkle"
      loop do
        puts "Would you like to roll the dice? (y/n)"
        choice = gets.chomp.downcase
    
        if choice == "y"
          game = TerminalFarkle::Dice.new
          game.rollDice
          game.countDice
        elsif choice == "n"
          puts "Thanks for playing!"
          break
        else
          puts "Invalid choice, please try again."
          exit
        end
      end
    end
  end
end

playgame = TerminalFarkle::PlayGame.new
playgame = playgame.play
