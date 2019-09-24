print("Hello World")
seconds = input("Please enter the number of seconds you wish to convert")

hours = int(seconds) // 3600
total_secs = int(seconds)
secs_still_remaining = total_secs % 3600
print(hours)
print(total_secs)
print(secs_still_remaining)