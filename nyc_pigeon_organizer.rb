def nyc_pigeon_organizer (data)
  result = Hash.new()
  
  data.each do |first, second|
    second.each do |category, names|
      names.each do |i|
        if result[i] == nil
          result[i] = {:color => [], :gender => [], :lives => []}
        end
      end 
    end 
  end 
  
  pigeonNames = result.keys
  
  color = data[:color]
  color.each do |bird_color, name|
    name.each do |bird_name|
      pigeonNames.each do |item|
        if bird_name === item
          result[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      pigeonNames.each do |item|
        if bird_name === item
          result[item][:gender] << gender.to_s
        end 
      end 
    end 
  end
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      pigeonNames.each do |item|
        if bird_name === item
          result[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return result 
end 