# Write your code here!
require "pry"

def game_hash
  game_hash = {
    home: {
      team_name: "Brooklyn Nets", #string of the team name
      colors: ["Black", "White"], #an array of strings
      players: [
        "Alan Anderson" =>{ 
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks:  1,
          slam_dunks: 1
        }, #end of a single player
         "Reggie Evans" =>{ 
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks:  12,
          slam_dunks: 7
        }, #end of a single player
         "Brook Lopez" =>{ 
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks:  1,
          slam_dunks: 15
        }, #end of a single player
         "Mason Plumlee" =>{ 
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks:  8,
          slam_dunks: 5
        }, #end of a single player
         "Jason Terry" =>{ 
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks:  11,
          slam_dunks: 1
        }, #end of a single player
      ], #an array of hashes to contain players stats     
    },#end of :home 
    away: {
      team_name:  "Charlotte Hornets", #string of the team name
      colors: ["Turquoise", "Purple"], #an array of strings
      players: [
        "Jeff Adrien" =>{ 
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks:  7,
          slam_dunks: 2
        }, #end of a single player
         "Bismack Biyombo" =>{ 
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks:  15,
          slam_dunks: 10
        }, #end of a single player
         "DeSagna Diop" =>{ 
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks:  5,
          slam_dunks: 5
        }, #end of a single player
         "Ben Gordon" =>{ 
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks:  1,
          slam_dunks: 0
        }, #end of a single player
         "Kemba Walker" =>{ 
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks:  5,
          slam_dunks: 12
        }, #end of a single player
      ], #an array of hashes to contain players stats     
    },#end of away
    
  } #end of game_hash hash
#puts game_hash
  game_hash
end





game_hash

def num_points_scored(name)
  game_hash.each do |locus, locus_data|
#    puts locus_data[:team_name]
    list_of_players = []
      locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        if player_name == name
          puts "HOLY SHIT WE FOUND #{name} and he scored #{stat[:points]}"
          score = stat[:points]
          return score
        end
      end
     end
  end
end

#num_points_scored("Bismack Biyombo")

def shoe_size(name)
  game_hash.each do |locus, locus_data|
#    puts locus_data[:team_name]
    list_of_players = []
      locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        if player_name == name
 #         puts "HOLY SHIT WE FOUND #{name} and he wears #{stat[:shoe]}"
          wears = stat[:shoe]
          return wears
        end
      end
     end
  end
end


def team_colors(name)
  game_hash.each do |locus, locus_data|
    if locus_data[:team_name] == name
     return locus_data[:colors]
   end
  end
end


def team_names
  teams = []
  game_hash.each do |locus, locus_data|
    teams << locus_data[:team_name]
#    puts teams
  end
  teams
end

def player_numbers(team_name)
  jersey_list = []
  game_hash.each do |locus, locus_data|
    if locus_data[:team_name] == team_name
      list_of_players = []
      locus_data[:players].each do |player|
        list_of_players << player  
        player.each do |player_name, stat|
          #puts "This is the player name #{player_name} and this is the number #{stat[:number]}"
          jersey_list << stat[:number]
        end
      end
    end
  end
  jersey_list
end

def player_stats(name)
  game_hash.each do |locus, locus_data|
#    puts locus_data[:team_name]
    list_of_players = []
      locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        if player_name == name
#          puts "HOLY SHIT WE FOUND #{name} and he scored #{stat[:points]}"
#          score = stat[:points]
          return stat
        end
      end
     end
  end
end



def big_shoe_rebounds
  shoe_sizes = []
  game_hash.each do |locus, locus_data|
#    puts locus_data[:team_name]
    list_of_players = []

      locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
#          puts "HOLY SHIT THIS IS A BIG SHOE #{player_name} and he wears #{stat[:shoe]}"
         stat[:shoe]
         shoe_sizes << stat[:shoe]
        end
      puts shoe_sizes
      puts "The biggest shoe is #{shoe_sizes.max}"
              player.each do |player_name, stat|
                  #puts "HOLY SHIT #{player_name} wears #{stat[:shoe]}"
                  if stat[:shoe] == 19
                    puts "We found the giant and his name is #{player_name} who has #{stat[:rebounds]} rebounds"
                    return stat[:rebounds]
                  else
 #                   puts "Where did they go?"
                  end  
                end
     end
  end
end

def most_points_scored
  top_scores = []
  list_of_players = []
  game_hash.each do |locus, locus_data|
    locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        top_scores << stat[:points]
      end  
#      puts "These are the scores#{top_scores}" 
    end
  end
#  puts "This is a list of players #{list_of_players}"
  puts "These are the scores#{top_scores}"
    game_hash.each do |locus, locus_data|
      locus_data[:players].each do |player|
        player.each do |player_name, stat|
          if top_scores.max == stat[:points]
            puts "HALLLLELLUJA it's #{player_name}"
          return player_name
          end
        end
      end  
    end 
end

def winning_team
  game_hash
  scores_by_team = {}
  winning_team = ""
  list_of_players = []
  game_hash.each do |locus, locus_data|
    this_team = locus_data[:team_name]
    score = 0
    locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        score = score + stat[:points] 
      end  
     puts "These are the scores for #{this_team}. They total #{score}" 
     scores_by_team[this_team]=score
    end
  end
  puts scores_by_team
#  extra_array = scores_by_team.values
#  puts extra_array.max
  scores_by_team.each do |team, score|
    if score == scores_by_team.values.max
      puts "I am a golden god"
      return team
    end
  end
end  

def player_with_longest_name
  list_of_players = []
  player_names_array = []
  lengths = []
  game_hash.each do |locus, locus_data|
      locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        player_names_array << player_name
      end
     end
  end
#  puts player_names_array
  player_names_array.each do |nomen|
    lengths << nomen.length
  end
#  puts lengths
  player_names_array.each do |nomen|
    if nomen.length == lengths.max
#      puts "Holy fuckign cows and ducks I am amazing and #{nomen} is a long named MOFO"
      return nomen
    end
  end
end

def long_name_steals_a_ton?
  person_in_question = player_with_longest_name
  lengths = []
  list_of_players = []
  steals = []
  sneakiest = ""
  game_hash.each do |locus, locus_data|
    locus_data[:players].each do |player|
      list_of_players << player  
      player.each do |player_name, stat|
        steals << stat[:steals]
      end
    end
  end
#  puts steals
  game_hash.each do |locus, locus_data|
    locus_data[:players].each do |player|
      player.each do |player_name, stat|
        if stat[:steals] == steals.max
#          puts "#{player_name} is the sneakiest mother ducker"
          sneakiest = player_name  
        end
      end
    end  
  end
  print sneakiest
  sneakiest == person_in_question
end

long_name_steals_a_ton?