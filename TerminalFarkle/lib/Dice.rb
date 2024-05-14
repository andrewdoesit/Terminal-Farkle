# frozen_string_literal: true

require_relative "TerminalFarkle/version"

module TerminalFarkle
  class Dice
    attr_accessor :dice, :points

    def initialize
        @dice = []
        @points = 0
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
        checkPoints
      end

      def checkPoints
        checkOnes
        checkTwos
        checkThrees
        checkFours
        checkFives
        checkSixes
      end

      def checkOnes
        if @ones == 1 
          @points += 100
        elsif @ones == 2
          @points += 200
        elsif @ones == 3
          @points += 1000
        elsif @ones == 4
          @points += 2000
        elsif @ones == 5
          @points += 3000
        elsif @ones == 6
          @points += 4000
        end
        puts "Points: #{@points}"
      end

      def checkTwos
        if @twos == 3
          @points += 200
        elsif @twos == 4
          @points += 400
        elsif @twos == 5
          @points += 600
        elsif @twos == 6
          @points += 800
        end
        puts "Points: #{@points}"
      end


      def checkThrees
        if @threes == 3
          @points += 300
        elsif @threes == 4
          @points += 600
        elsif @threes == 5
          @points += 900
        elsif @threes == 6
          @points += 1200
        end
        puts "Points: #{@points}"
      end


      def checkFours
        if @fours == 3
          @points += 400
        elsif @fours == 4
          @points += 800
        elsif @fours == 5
          @points += 1200
        elsif @fours == 6
          @points += 1600
        end
        puts "Points: #{@points}"
      end


      def checkFives
        if @fives == 1
          @points += 50
        elsif @fives == 2
          @points += 100
        elsif @fives == 3
          @points += 500
        elsif @fives == 4
          @points += 1000
        elsif @fives == 5
          @points += 1500
        elsif @fives == 6
          @points += 2000
        end
        puts "Points: #{@points}"
      end

      def checkSixes
        if @sixes == 3
          @points += 600
        elsif @sixes == 4
          @points += 1200
        elsif @sixes == 5
          @points += 1800
        elsif @sixes == 6
          @points += 2400
        end
        puts "Points: #{@points}"
      end
    end
end
