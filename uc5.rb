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

# def calculate_full_time_wage(wage_per_hour, full_time_hour)
#   one_day_wage = wage_per_hour * full_time_hour
#   return one_day_wage
# end

# def calculate_part_time_wage(wage_per_hour, part_time_hour)
#   wage_per_hour * part_time_hour
# end
def calculate_daily_wage(wage_per_hour, hours)
  wage_per_hour * hours
end

wage_per_hour = 20
full_time_hour = 8
part_time_hour = 4
working_days = 20
total_working_days = 0
monthly_wages = 0

# Check attendance and calculate wage only if employee is present
if check_attendance 
  
#   work_type = rand(2)
#   if work_type == 1
#   daily_wage = calculate_full_time_wage(wage_per_hour, full_time_hour)
#   puts "One day full-time wage is: $#{daily_wage}"
  
#   else
#   daily_wage = calculate_part_time_wage(wage_per_hour, part_time_hour)
#    puts "One day part-time wage is: $#{daily_wage}"

#   end
# else
#   puts "No wage as the employee is absent."
working_days.times do |day|
  work_type = rand(2) # Randomly decide full-time (1) or part-time (0)

  case work_type
  when 1
    # Full-Time Wage Calculations
    total_working_days += 1
    daily_wage = calculate_daily_wage(wage_per_hour, full_time_hour)
    monthly_wages += daily_wage
    puts "Day #{total_working_days}: Full-Time Employee, Wage = $#{daily_wage}"
  when 0
    # Part-Time Wage Calculations
    total_working_days += 1
    daily_wage = calculate_daily_wage(wage_per_hour, part_time_hour)
    monthly_wages += daily_wage
    puts "Day #{total_working_days}: Part-Time Employee, Wage = $#{daily_wage}"
  end
end

puts "\nTotal Working Days: #{total_working_days}"
puts "Total Monthly Wages: $#{monthly_wages}"
else
puts "No work done this month due to absence."
end