# This program lets the user enter check amounts individually,
# then displays each check, counts how many there are
# and displays total at the bottom.
# Allows user to delete a specific check if an error was made

#array stores each check individually
each_check = []
#checks to see if user typed "q" to quit - changes to 1 if so and loop stops
stop = 0
#loop goes until user types "q"
while stop == 0
	puts "Enter check amount, q to quit, or -# to delete a check"
	#stores entered amount in variable, taking off return key
	amount = gets.chomp
	#if user types "q" to quit, stopping variable changes to 1 and loop ends
	if amount == "q"
		stop = 1
	else
		#if amount is a negative number user wants to delete a check
		if amount.to_i < 0
			#delete from array the check at the index (made positive with -, and minus 1, since index starts at 0)
			each_check.delete_at(-amount.to_i - 1)
		else
			#push check to array as a float
			each_check << amount.to_f
		end
		#Whether deleting or adding, display all checks and new
		puts "----------------------"
		#Set up counting variable to display number of checks
		i=1
		#stores sum of each check in array, reset to zero after each entry in case user deleted
		total_checks = 0
		#loop through each check in array
		each_check.each do |one_check|
			#display counter and check with two decimal places
			puts "#{i}. #{'%.2f' % one_check}"
			#add that check to running total to display later
			total_checks += one_check
			#increase counting variable
			i += 1
		end
		#after looping through all checks display total to two decimal places
		puts "Total: $#{'%.2f' % total_checks}."
		puts "----------------------"
	end
end