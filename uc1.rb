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

check_attendance()