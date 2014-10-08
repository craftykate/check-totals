# Ruby Check Totaling Program

## Overview

* **Who would use it**
	- At my office job I often have several checks to process and total up, and a regular calculator always leaves me a little concerned I didn't count every check or maybe I entered one of them incorrectly. A regular calculator just gives the total, and no more information. So I built this program as a sort of extension to a regular calculator. 

* **What it does**
	- This is a basic program that totals checks. That's about it. Keep entering check amounts and it gives you each check's amount, how many checks you've entered, and the total. 
	- Did you enter all 12 checks or just 11? Was the third check you entered correct? Each time you enter a check you will see all the information entered, helping you make sure you've done it correctly.
	- Made a mistake? Type `-2` to erase the second check and a new summary will automatically show up.

* **Contents**
	- `.gitignore` - You can ignore the `.gitignore`
	- `README.md` - What you're reading now
	- `checks.rb` - The actual program for you to download

## How to Use

* **Getting Started**
	- Download `checks.rb` to the folder of your choice

* **Usage**
	- Open the terminal window, navigate to the folder `checks.rb` is in
	- Type `ruby checks.rb`
	- Program will ask for the first amount. Type `102.4` or whatever your check amount is
	- Program will give you the following output:
	```
	----------------------
	1. 102.40
	Total: $102.40.
	----------------------
	Enter check amount, q to quit, or -# to delete a check
	```
	- Keep adding amounts and pressing enter and you'll eventually end up with something like this:
	```
	----------------------
	1. 102.40
	2. 37.00
	3. 94.73
	4. 56.64
	Total: $290.77.
	----------------------
	Enter check amount, q to quit, or -# to delete a check
	```
	- As you can see, each time you enter a check every check is shown as well as the total. You can feel confident that you have entered all four checks, they are all correct, and the total is accurate.

* **Options**
	- As the program tells you, you can do the following three things:
	- **Enter check amount** 
		* What we've been doing all along. Enter a number and press enter.
	- **q to quit**
		* Are you done? Type `q` and hit enter and the program will stop.
	- **-# to delete a check**
		* Oops! Maybe our 2nd check from the above example was incorrect and should have been "37.5". Easy enough to fix. Here's how:
			- Simply type `-2` to delete the second check and hit enter. The program will automatically give you the new total, minus the offending check:
			```
			----------------------
			1. 102.40
			2. 94.73
			3. 56.64
			Total: $253.77.
			----------------------
			Enter check amount, q to quit, or -# to delete a check
			```
			- Now enter the correct amount of `37.5` and hit enter and the problem is solved:
			```
			----------------------
			1. 102.40
			2. 94.73
			3. 56.64
			4. 37.50
			Total: $291.27.
			----------------------
			Enter check amount, q to quit, or -# to delete a check
			```






