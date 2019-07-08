require "pry"

def game_hash
  game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson": {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans": {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez": {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee": {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry": {
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
        "Jeff Adrien": {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo": {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop": {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon": {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood": {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
  return game_hash
end


# NUMBER OF POINTS SCORED #
def num_points_scored(name)
  game_hash[:home][:players].each do |k, v|
    if k.to_s == name
      return v[:points]
    end
  end
  
  game_hash[:away][:players].each do |k, v|
    if k.to_s == name
      return v[:points]
    end
  end
end


# SHOE SIZE #
def shoe_size(name)
  game_hash[:home][:players].each do |k, v|
    if k.to_s == name
      return v[:shoe]
    end
  end
  
  game_hash[:away][:players].each do |k, v|
    if k.to_s == name
      return v[:shoe]
    end
  end
end


# TEAM COLORS #
def team_colors(team)
  if game_hash[:home][:team_name].to_s == team
    return game_hash[:home][:colors]
  end
  
  if game_hash[:away][:team_name].to_s == team
    return game_hash[:away][:colors]
  end
end


# TEAM NAMES #
def team_names
  teamArray = []
  game_hash.each do |location, team_data|
    teamArray.push(team_data[:team_name])
  end
  return teamArray
end


# PLAYER NUMBERS #
def player_numbers(team_name)
  number_array = []
  game_hash.each do |location, team_data|
    if team_data[:team_name].to_s == team_name
      team_data[:players].each do |player, player_data|
        number_array.push(player_data[:number])
      end
    end
  end
  return number_array
end


# PLAYER STATS #
def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |key, value|
      if key.to_s == player_name
        return value
      end
    end
  end
end


# LARGEST SHOE SIZE #
def largest_shoe_size
  largest_shoe = ["", 0]
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, player_stats|
      if player_stats[:shoe] > largest_shoe[1]
        largest_shoe = [player.to_s, player_stats[:shoe]]
      end
    end
  end
  return largest_shoe
end


# GET PLAYER REBOUNDS #
def player_rebounds(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, player_stats|
      if player.to_s == player_name.to_s
        return player_stats[:rebounds]
      end
    end
  end
end
  
# BIG SHOE REBOUNDS #
def big_shoe_rebounds
  player = largest_shoe_size
  player_rebounds(player[0])
end

puts big_shoe_rebounds
# puts team_names
# puts team_colors("Charlotte Hornets")
# puts shoe_size("Brendan Haywood")
# puts players_numbers("Charlotte Hornets")














def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end

