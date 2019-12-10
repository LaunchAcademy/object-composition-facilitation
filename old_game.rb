require 'pry'
require_relative 'player'

class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player_name)
    # we can create objects while in another object! Then our game object can hold on to multiple
    @players << Player.new(player_name)
  end

  def play_game
    # while the player with the most points has less than 5
    while @players.max_by { |player| player.points }.points < 5
      # grab a random player
      lucky_player = @players.sample
      puts "#{lucky_player.name} is the lucky player."
      # add to the random player's score
      lucky_player.points += 1
      puts "#{lucky_player.name} now has #{lucky_player.points} points."
    end
    # if we are now out of the while loop, than retrieve the winning player and output
    winning_player = @players.max_by { |player| player.points }
    puts "#{winning_player.name} wins!"
  end

  # private

  # def assign_random_point
  #   lucky_player = @players.sample
  #   puts "#{lucky_player.name} is the lucky player."
  #   lucky_player.points += 1
  #   puts "#{lucky_player.name} now has #{lucky_player.points} points."
  # end
  #
  # def winning_player
  #   @players.max_by { |player| player.points }
  # end
end
