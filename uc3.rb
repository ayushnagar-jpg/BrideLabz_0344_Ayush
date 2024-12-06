def check_attendance
  attendance_status = rand(2) 
  if attendance_status == 0
    puts "Employee is absent"
    return false 
  else
    puts "Employee is present"
    return true 
  end
end

# check_attendance()

# def calculate_daily_wage(wage_per_hour, full_time_hour)
#   one_day_wage = wage_per_hour * full_time_hour
#   return one_day_wage
# end
def calculate_part_time_wage(wage_per_hour, part_time_hour)
  wage_per_hour * part_time_hour
end

wage_per_hour = 20
# full_time_hour = 8
part_time_hour = 4

# Check attendance and calculate wage only if employee is present
if check_attendance 
  
  # daily_wage = calculate_daily_wage(wage_per_hour, full_time_hour)
  # puts "One day wage is: $#{daily_wage}"
  
  daily_wage = calculate_part_time_wage(wage_per_hour, part_time_hour)
   puts "One day part-time wage is: $#{daily_wage}"

end