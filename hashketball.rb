def game_hash
{
  home: {team_name: "Brooklyn Nets", 
  colors: ["Black", "White"], 
  players: 
    {"Alan Anderson": 
    {number: 0, 
      shoe: 16, 
    points: 22, 
  rebounds: 12, 
   assists: 12, 
     steals: 3,
     blocks: 1, 
 slam_dunks: 1},
 "Reggie Evans": 
    {number: 30, 
       shoe: 14, 
     points: 12, 
   rebounds: 12, 
    assists: 12, 
     steals: 12,
     blocks: 12, 
  slam_dunks: 7},
 "Brook Lopez": 
    {number: 11, 
       shoe: 17, 
     points: 17, 
   rebounds: 19, 
    assists: 10, 
     steals: 3,
     blocks: 1, 
  slam_dunks: 15},
 "Mason Plumlee": 
    {number: 1, 
       shoe: 19, 
     points: 26, 
   rebounds: 12, 
    assists: 6, 
     steals: 3,
     blocks: 8, 
  slam_dunks: 5},
 "Jason Terry": 
    {number: 31, 
       shoe: 15, 
     points: 19, 
   rebounds: 2, 
    assists: 2, 
     steals: 4,
     blocks: 11, 
  slam_dunks: 1}
      }
      },
  
  away: {team_name: "Charlotte Hornets", 
  colors: ["Turquoise", "Purple"], 
  players: 
    {"Jeff Adrien": 
    {number: 4, 
      shoe: 18, 
    points: 10, 
  rebounds:  1, 
   assists:  1, 
     steals: 2,
     blocks: 7, 
 slam_dunks: 2},
 "Bismack Biyombo": 
    {number:  0, 
       shoe: 16, 
     points: 12, 
   rebounds:  4, 
    assists:  7, 
     steals:  7,
     blocks:  15, 
  slam_dunks: 10},
 "DeSagna Diop": 
    {number:  2, 
       shoe: 14, 
     points: 24, 
   rebounds: 12, 
    assists: 12, 
     steals:  4,
     blocks: 5, 
  slam_dunks: 5},
 "Ben Gordon": 
    {number: 8, 
       shoe: 15, 
     points: 33, 
   rebounds: 3, 
    assists: 2, 
     steals: 1,
     blocks: 1, 
  slam_dunks: 0},
 "Brendan Haywood": 
    {number: 33, 
       shoe: 15, 
     points: 6, 
   rebounds: 12, 
    assists: 12, 
     steals: 22,
     blocks:  5, 
  slam_dunks: 12}
      }
    }
}
end



def num_points_scored(player_name)
  
  player_name = player_name.to_sym
  
  if game_hash[:home][:players].has_key?(player_name)
    game_hash[:home][:players][player_name][:points] 
  else
     game_hash[:away][:players][player_name][:points]
  
  end
end



def shoe_size(player_name)
  
    player_name = player_name.to_sym
  
  if game_hash[:home][:players].has_key?(player_name)
    game_hash[:home][:players][player_name][:shoe] 
  else
     game_hash[:away][:players][player_name][:shoe]
  
  end
end


def team_colors(tname)
  if game_hash[:home].value?(tname)
    game_hash[:home][:colors] 
  else
     game_hash[:away][:colors]
  
  end
  
end



def team_names
  tnames = []
  tnames.push(game_hash[:home][:team_name])
  tnames.push(game_hash[:away][:team_name])
  tnames

end
  



def player_numbers(tname)
  
  a = []
  game_hash.map do |location, data|
   
   if data.value?(tname)
     
     data.map do |attriubute, stat|
      
      if attriubute == :players
      
       stat.map do |name, info|
         
       a.push(info.values_at(:number))
      end
      
     end
    end
end
end
a.flatten
end



def player_stats(name)

a = {}
  game_hash.map do |location, data|
   
    data.map do |attriubute, stat|
          
    if attriubute == :players
      
         stat.map do |player, info|   
           
           if player == name.to_sym
             
            a = info
      end
            
    end
    end
   end
  end
  a
end



def big_shoe_rebounds
  c =[]
  a = 0
  b = 0
    game_hash.map do |location, data|
   
    data.map do |attriubute, stat|
          
    if attriubute == :players

    stat.map do |player, info|
      
     c = (info.values_at(:shoe)).join.to_i
    
      
      if c > b
        b = c
        
        a = (info.values_at(:rebounds)).join.to_i
      end
        
  
 end
 end
 end
 end
 a
end









