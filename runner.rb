require_relative "game"
require "pry"

game_1 = Game.new

game_1.add_player("AmyLynn")
game_1.add_player("Brianna")
game_1.add_player("Nick")
# binding.pry
game_1.play_game
