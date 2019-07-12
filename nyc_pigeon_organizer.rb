def nyc_pigeon_organizer (data)
  result = Hash.new()
  
  #--MAKING HASH WITH NAMES AS KEYS (SITLL TO BE FILLED OUT)
  
  data.each do |first, second|
    second.each do |category, name|
      name.each do |i|
        if result[i] == nil
          result[i] = {:color => [], :gender => [], :lives => []}
        end
      end 
    end 
  end 
  
  #--MAKING ARRAY OF PIGEON NAMES
  
  pigeonNames = result.keys
  
  #--ADDING COLOR TO HASH
  
  color = data[:color]
  color.each do |birdColor, name|
    name.each do |birdName|

      pigeonNames.each do |i|
        if birdName === i
          result[i][:color].push(birdColor.to_s)
        end 
      end 
      
    end 
  end 
  
  #--ADDING GENDER TO HASH
  
  gender = data[:gender]
  gender.each do |gender, name|
    name.each do |birdName|
      
      pigeonNames.each do |i|
        if birdName === i
          result[i][:gender].push(gender.to_s)
        end 
      end 
      
    end 
  end
  
  #--ADDING LIVES TO HASH
  
  lives = data[:lives]
  lives.each do |location, name|
    name.each do |birdName|

      pigeonNames.each do |i|
        if birdName === i
          result[i][:lives].push(location.to_s)
        end 
      end 
      
    end 
  end 
  
  #--ALL DONE 
  
  return result 
end 