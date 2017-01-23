# ----------All the problems from coding bat-----------------

# The parameter weekday is true if it is a weekday, and the parameter 
# vacation is true if we are on vacation. We sleep in if it is not a 
# weekday or we're on vacation. Return true if we sleep in.

# sleepIn(false, false) → true
# sleepIn(true, false) → false
# sleepIn(false, true) → true
function sleepIn {
	weekday_bool=$1
	vacation_bool=$2
	
	if [ $weekday_bool -eq "false" -o $vacation_bool -eq "true" ]; then
		return 0
	else 
		return 1
	fi
}

# We have two monkeys, a and b, and the parameters 
# aSmile and bSmile indicate if each is smiling. We are in trouble 
# if they are both smiling or if neither of them is smiling. Return true if we are in trouble.
# monkeyTrouble(true, true) → true
# monkeyTrouble(false, false) → true
# monkeyTrouble(true, false) → false

function monkeyTrouble {
	monkeyA=$1
	monkeyB=$2

	if [ monkeyA = "true" ] && [ monkeyB = "true" ]; then
		return 0
	elif [ monkeyA = "false" ] && [ monkeyB = "false" ]; then
		return 0
	else
		return 1
	fi
}

# Given two int values, return their sum. 
# Unless the two values are the same, 
# then return double their sum.

# sumDouble(1, 2) → 3
# sumDouble(3, 2) → 5
# sumDouble(2, 2) → 9

function sumDouble {
	num1=$1
	num2=$2

	if [ $num1 -eq $num2 ]; then
		echo "($num1 + $num2) * 2" | bc
	else
		echo "($num1 + $num2)" | bc
	fi
}


# Given an int n, return the absolute difference between n and 21, 
# except return double the absolute difference if n is over 21.

# diff21(19) → 2
# diff21(10) → 11
# diff21(21) → 0

function diff21 {
	num1=$1
	if [ $num1 -gt 21 ]; then
		(( abs_difference=$num1-21 ))
		(( abs_difference=$abs_difference*2 ))
	else
		(( abs_difference=21-$num1 ))
	fi

	echo $abs_difference
}

# We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.

# parrotTrouble(true, 6) → true
# parrotTrouble(true, 7) → false
# parrotTrouble(false, 6) → false
function parrotTrouble {
	talking_bool=$1
	hour=$2

	if [ $talking_bool -eq "true" ] && [ $hour -lt 7 -o $hour -gt 20 ]; then 
		return 0
	else
		return 1
	fi
}

function makes10 {
	if [ $1 -eq 10 -o $2 -eq 10 ]; then
		return 0
	else
		(( sum=$1+$2 ))
		if [ $sum -eq 10 ]; then
			return 0
		else
			return 1
		fi
	fi
}


# Given an int n, return true if it is within 10 of 100 or 200. 
# Note: Math.abs(num) computes the absolute value of a number in java, but this is bash so ur out of luck.
# nearHundred(93) → true
# nearHundred(90) → true
# nearHundred(89) → false

function nearHundred {
	if [ $1 -ge 90 ] && [ $1 -le 110 ]; then 
		return 0
	elif [ $1 -ge 190 ] && [ $1 -le 210]; then
		return 0
	else
		return 1
	fi
}

# Given 2 int values, return true if one is negative and one is positive. 
# Except if the parameter "negative" is true, 
# then return true only if both are negative.

# posNeg(1, -1, false) → true
# posNeg(-1, 1, false) → true
# posNeg(-4, -5, true) → true

function posNeg {
	num1=$1
	num2=$2
	negative_bool=$3

	if [ $negative_bool = "true" ]; then
		if [ $num1 -lt 0 ] && [ $num2 -lt 0 ]; then
			return 0
		fi
	elif [ $num1 -lt 0 ] && [ $num2 -ge 0 ]; then
		return 0
	elif [ $num1 -ge 0 ] && [ $num2 -lt 0 ]; then
		return 0
	fi
}

function test_it {
	
}

test_it