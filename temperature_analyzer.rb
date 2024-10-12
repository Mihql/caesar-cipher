def temperature_analyzer(temperature)
  max_temperature = 0
  result_day = nil
  result_temp = nil

  temperature.each_with_index do |temp, day|
    # temperature[day+1].each do |temp_day_two_index|

    if (day + 1) < temperature.length
      temp_two_value = temperature[day + 1]
      puts "Next day's temperature: #{temp_two_value}"

      temp_difference = temp_two_value - temp

      if temp_difference > max_temperature
        max_temperature = temp_difference
        result_temp = temp_two_value
        result_day = day + 1
      end

    else
      puts "No data for next day, out of bounds!"
    end
  end

  result = [result_day, result_temp]
end


temperature = [20, 18, 25, 22, 30, 28, 35]
# temperature = [22, 20, 20, 19, 18, 17, 16]
p temperature_analyzer(temperature)




