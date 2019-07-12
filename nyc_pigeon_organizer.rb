def nyc_pigeon_organizer (data)
  result = Hash.new()

  data.each do |first, second|
    second.each do |category, OfNa|
      array.each do |name|
        if result[name] == false
          result[name] = {:color => [], :gender => [], :lives => []}
        end
      end 
    end 
  end 
  x = result.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          result[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          result[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          result[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return result 
end 