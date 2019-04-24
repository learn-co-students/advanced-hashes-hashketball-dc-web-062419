require "pry"

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
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
          :rebounds => 12,
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
        },
      },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
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
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
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
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
          }
        },
      },
    }
  end

# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
#
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end
# good_practices

def num_points_scored(name)
  points = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player == name
        points = stats[:points]
      end
    end
  end
  points
end

def shoe_size(name)
  shoe = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player == name
        shoe = stats[:shoe]
      end
    end
  end
  shoe
end

def team_colors(team)
  colors = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      colors = team_data[:colors]
    end
  end
  colors
end

def team_names
  teamnames = []
  game_hash.each do |location, team_data|
    teamnames.push(team_data[:team_name])
  end
  teamnames
end

def player_numbers(team)
  teamnums = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      team_data[:players].each do |player, stats|
        teamnums.push(stats[:number])
      end
    end
  end
  teamnums
end

def player_stats(name)
  playerstats = {}
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player == name
        playerstats = stats
      end
    end
  end
  playerstats
end

def big_shoe_rebounds
  bigfoot_hash = {}
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stat|
      bigfoot_hash[player] = stat[:shoe]
    end
  end
  bigfoot = bigfoot_hash.key(bigfoot_hash.values.max)
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player == bigfoot
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  top_score = 0
  mvp = ''
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if stats[:points] > top_score
        top_score = stats[:points]
        mvp = player
      end
    end
  end
  mvp
end

def winning_team
  highest = 0
  winners = ''
  game_hash.each do |location, team_data|
    running_total = 0
    team_data[:players].each do |player, stats|
      running_total += stats[:points]
    end
    if running_total > highest
      highest = running_total
      winners = team_data[:team_name]
    end
  end
  winners
end

def player_with_longest_name
  num_chars = 0
  mouthfull = ''
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player.length > num_chars
        mouthfull = player
      end
    end
  end
  mouthfull
end

def long_name_steals_a_ton?
  stealer = ''
  max_steals = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if stats[:steals] > max_steals
        max_steals = stats[:steals]
        stealer = player
      end
    end
  end
  player_with_longest_name == stealer
end
