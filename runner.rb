require_relative "new_game"
require "pry"

# One file that does NOT have the ruby classes in it. That instead just uses methods from those classes, and maybe has simple if else logic

game_1 = Game.new
game_1.add_player("AmyLynn")
game_1.add_player("Brianna")
game_1.add_player("Nick")
game_1.play_game

# binding.pry
