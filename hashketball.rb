require "pry"

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      
       "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      
       "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      
       "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
        }
    }
    },
    
    :away => {
       :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      
       "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      
       "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      
       "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      
       "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
       }
    }
  }
  }
end


def num_points_scored(name)
  points = 0
  player_hash = {}
  game_hash.each do |place, team_info|
    team_info[:players].each do |player, stats|
      player_hash[player] = stats
    end
  end
  player_hash.each do |player, stats|
    if player == name
      points = stats[:points]
    end 
  end
  return points
end

def shoe_size(name)
  shoe = 0
  player_hash = {}
  game_hash.each do |place, team_info|
    team_info[:players].each do |player, stats|
      player_hash[player] = stats
    end
  end
  player_hash.each do |player, stats|
    if player == name
      shoe = stats[:shoe]
    end 
  end
  return shoe
end

def team_colors(team)
  array = []
  game_hash.each do |game, info|
    info.each do |player, names|
      if names == team
        array << game_hash[game][:colors]
      end
    end 
  end 
  array.flatten
end
     
def team_names
  array = []
  game_hash.each do |game, info|
    info.each do |player, names|
      if player == :team_name
        array << names
      end
    end
  end
  array
end

def player_numbers(team)
  array = []
  game_hash.each do |game, info|
    if info[:team_name] == team
      info[:players].each do |player, jersey|
            array << jersey[:number]
          end
        end
      end
  array
end


def player_stats(name)
  player_hash = {}
  play_stats_hash = {}
  game_hash.each do |team, info|
    info[:players].each do |player, num|
     player_hash[player] = num
     player_hash.each do |player, stats|
    if player == name
      player_hash[player] = stats
     play_stats_hash = player_hash[player]
      # binding.pry
    end 
  end
    end
  end
  return play_stats_hash
end

def big_shoe_rebounds
  big_feet = 0 
  rebounds = 0 
  game_hash.each do |game, info|
    info[:players].each do |team, num|
      if num[:shoe] > big_feet
        big_feet = num[:shoe]
        rebounds = num[:rebounds]
    end 
  end 
end 
rebounds
end
