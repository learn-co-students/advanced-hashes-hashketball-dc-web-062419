# Write your code here!

# game_hash
def game_hash
game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
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
      },
    ],
  },
  :away =>{
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
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
        },
      ],
  },
}
game_hash
end

# num_points_scored
def num_points_scored(name)
  game_hash.each do |location, team_data|
    players = []
    team_data[:players].each do |player|
      players << player
      player.each do |player_name, stat|
        if player_name == name
        score = stat[:points]
        return score
        end
      end
    end
  end
end


# shoe_size
def shoe_size(name)
  game_hash.each do |location, team_data|
    players = []
    team_data[:players].each do |player|
      players << player
      player.each do |player_name, stat|
        if player_name == name
        shoes = stat[:shoe]
        return shoes
        end
      end
    end
  end
end

# team_colors
def team_colors(team)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      return team_data[:colors]
    end
  end
end

# team_names
def team_names
  teams = []
  game_hash.each do |location, team_data|
    teams << team_data[:team_name]
    end
     teams
  end

#player_numbers
def player_numbers(team_name)
  numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      players =[]
      team_data[:players].each do |player|
        players << player
        player.each do |player_name, stat|
          numbers << stat[:number]
        end
      end
    end
  end
  numbers
end

# player_stats
def player_stats(name)
  game_hash.each do |location, team_data|
    players_list = []
    team_data[:players].each do |player|
      players_list << player
      player.each do |player_name, stat|
        if player_name == name
          return stat
        end
      end
    end
  end
end

#big_shoe_rebounds
def big_shoe_rebounds
  shoe_size = []
    game_hash.each do |location, team_data|
      players_list = []
        team_data[:players].each do |player|
        players_list << player
        player.each do |player_name, stat|
           stat[:shoe]
           shoe_size << stat[:shoe]
          end
                player.each do |player_name, stat|
                    if stat[:shoe] == shoe_size.max
                      return stat[:rebounds]
                    end
                  end
       end
    end
  end

  ## bonus ##
  # most_points_scored
  def most_points_scored
    top_player = []
    players_list =[]
    game_hash.each do |location, team_data|
      team_data[:players].each do |player|
        players_list << player
        player.each do |player_name, stat|
          top_player << stat[:points]
        end
      end
    end
    game_hash.each do |location, team_data|
      team_data[:players].each do |player|
        player.each do |player_name, stat|
          if top_player.max == stat[:points]
            return player_name
          end
        end
      end
    end
  end

#winning_team
def winning_team
game_hash
team_points = {}
winning_team = ""
players_list = []
game_hash.each do |location, team_data|
  team = team_data[:team_name]
  points = 0
  team_data[:players].each do |player|
    players_list << player
    player.each do |player_name, stat|
      points = points + stat[:points]
    end
    team_points[team] = points
  end
end
puts team_points

team_points.each do |team, points|
  if points == team_points.values.max
    return team
  end
end
end

#player_with_longest_name
def player_with_longest_name
  players_list = []
    player_names = []
    lengths = []
    game_hash.each do |locus, locus_data|
        locus_data[:players].each do |player|
        players_list << player
        player.each do |player_name, stat|
          player_names << player_name
        end
       end
    end

    player_names.each do |name|
      lengths << name.length
    end

    player_names.each do |name|
      if name.length == lengths.max

        return name
    end
  end
end
#long_name_steals_a_ton
def long_name_steals_a_ton?
player_steals = player_with_longest_name
lengths = []
players_list = []
steals = []
steal_success = ""
game_hash.each do |location, team_data|
  team_data[:players].each do |player|
    players_list << player
    player.each do |player_name, stat|
      steals << stat[:steals]
    end
  end
end
game_hash.each do |location, team_data|
  team_data[:players].each do |player|
    player.each do |player_name, stat|
      if stat[:steals] == steals.max
        steal_success = player_name
      end
    end
  end
end
print steal_success
steal_success = player_steals
if steal_success == player_steals
  return true
end
end
