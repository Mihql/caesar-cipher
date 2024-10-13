max_temperature = 0
result_day = nil
result_temp = nil
count = 0

def temperature_analyzer(temperature)
  max_temperature = 0
result_day = nil
result_temp = nil
count = 0

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

# Return the longest streak of consecutive days where the temperature increased
def temperature_analyzer_longest_streak(temperature)

max_streak_length = 0
max_streak_start_day = nil
current_streak_length = 0
current_streak_start_day = 0

  temperature.each_with_index do |temp_value, temp_day|
    if temp_day > 0 && temp_value > temperature[temp_day - 1]
      current_streak_length += 1
    else
      # Reset?
      current_streak_start_day = temp_day
      current_streak_length = 1
    end 

    if current_streak_length > max_streak_length
      max_streak_length = current_streak_length
      max_streak_start_day = current_streak_start_day
    end
  end

  max_streak_start_day
end


temperature = [20, 18, 25, 22, 30, 28, 35]
temperature_streak = [20, 22, 23, 21, 24, 25, 26, 20, 21]
# temperature = [22, 20, 20, 19, 18, 17, 16]
p temperature_analyzer(temperature)
p temperature_analyzer_longest_streak(temperature_streak)




