require 'pry'
require_relative './../clinic/react-intro'

class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player_name)
     new_player = Player.new(player_name)
    @players << new_player
  end

  def play_game
    while winning_player.points < 5
      assign_random_point
    end

    puts "#{winning_player.name} wins!"
  end

  private

  def assign_random_point
    lucky_player = @players.sample
    puts "#{lucky_player.name} is the lucky player."
    lucky_player.points += 1
    puts "#{lucky_player.name} now has #{lucky_player.points} points."
  end

  def winning_player
    @players.max_by { |player| player.points }
  end
end
