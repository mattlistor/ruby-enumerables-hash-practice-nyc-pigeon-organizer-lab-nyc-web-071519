def nyc_pigeon_organizer (data)
  result = Hash.new()
  
  data.each do |first, second|
    second.each do |category, name|
      name.each do |i|
        if result[i] == nil
          result[i] = {:color => [], :gender => [], :lives => []}
        end
      end 
    end 
  end 
  
  pigeonNames = result.keys
  
  color = data[:color]
  color.each do |birdColor, name|
    name.each do |birdName|
      pigeonNames.each do |item|
        if birdName === item
          result[item][:color].push(birdColor.to_s)
        end 
      end 
    end 
  end 
  
  gender = data[:gender]
  gender.each do |gender, name|
    name.each do |birdName|
      pigeonNames.each do |item|
        if birdName === item
          result[item][:gender].push(gender.to_s)
        end 
      end 
    end 
  end
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      pigeonNames.each do |item|
        if bird_name === item
          result[item][:lives].push(location)
        end 
      end 
    end 
  end 
  
  return result 
end 