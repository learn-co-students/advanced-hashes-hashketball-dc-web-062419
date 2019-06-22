require "pry"

def game_hash
  game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },

        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },

        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },

        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },

        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }

      }
    },

    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },

        "Bismack Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },

        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },

        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },

        "Kemba Walker" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  } 
end

def num_points_scored(name)
  points = 0
  game_hash.each do |location, team_data| 
    team_data[:players].each do |player, stats|
      if name == player
        points = stats[:points]
      end
    end
  end
  points
end

def shoe_size(name)
  shoe_size = 0
  game_hash.each do |location, team_data| 
    team_data[:players].each do |player, stats|
      if name == player
        shoe_size = stats[:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team)
  colors = []
  game_hash.each do |location, team_data|
    if team == team_data[:team_name]
      colors = team_data[:colors]
      end
  end
  colors
end

def team_names
  game_hash.map { |location, team_data| team_data[:team_name] }
end

def player_numbers(team)
  team_numbers = []
  game_hash.each do |location, team_data| 
    if team == team_data[:team_name]
    team_data[:players].each do |player, stats|
     team_numbers << stats[:number]
      end
    end
  end
  team_numbers
end

def player_stats(name)
  game_hash.map do |location, team_data| 
    team_data[:players].map do |player, stats|
      if name == player
        return stats
      end
    end
  end
end

def big_shoe_rebounds
  big_shoe = 0
  big_shoe_player = ""
  big_shoe_rebound = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if stats[:shoe] > big_shoe
        big_shoe = stats[:shoe]
        big_shoe_player = player
      end
    end
    return big_shoe_rebound = team_data[:players][big_shoe_player][:rebounds]
  end
  big_shoe_rebound
end

def most_points_scored
  most_points = 0
  most_points_player = ""
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if stats[:points] > most_points
        most_points = stats[:points]
        most_points_player = player
      end
    end
  end
  most_points_player
end


def winning_team
  home_points = 0
  away_points = 0
  game_hash.each do |location, team_data| 
    binding.pry
    if game_hash = :away 
      team_data[:players].each do |player, stats|
        home_points += stats[:points]
      end
    else
      team_data[:players].each do |player, stats|
        away_points += stats[:points]
      end
    end
  end
  binding.pry
end

    









=begin 
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

good_practice 
=end