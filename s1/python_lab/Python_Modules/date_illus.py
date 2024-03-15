from datetime import datetime, timedelta

# Get current date and time

current_time = datetime.now()

print("Current Date and Time:", current_time)

#Calculate future date

day_to_add = 7

future_date = current_time + timedelta(days=day_to_add)

print("Date after ", day_to_add, "days:", future_date)


