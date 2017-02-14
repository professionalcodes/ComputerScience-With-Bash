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
		echo "true"
	else 
		echo "false"
	fi
}

function test_sleepIn {
	sleepIn false false 
	sleepIn true false
	sleepIn false true 
	echo "true false true"
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
		echo "true"
	elif [ monkeyA = "false" ] && [ monkeyB = "false" ]; then
		echo "true"
	else
		echo "false"
	fi
}

function test_monkeyTrouble {
	monkeyTrouble true true 
	monkeyTrouble false false
	monkeyTrouble true false
	echo "true true false"
}

# Given two int values, return their sum. 
# Unless the two values are the same, 
# then return double their sum.
# sumDouble(1, 2) → 3
# sumDouble(3, 2) → 5
# sumDouble(2, 2) → 8
function sumDouble {
	num1=$1
	num2=$2

	if [ $num1 -eq $num2 ]; then
		(( doubleSum=($num1+$num2)*2 )) && echo $doubleSum
	else
		(( sum=$num1+$num2 )) && echo $sum
	fi
}

function test_sumDouble {
	sumDouble 1 2
	sumDouble 3 2
	sumDouble 2 2
	echo "3 5 8"
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

function test_diff21 {
	diff21 19
	diff21 10
	diff21 21
	echo "2 11 0"
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

function test_parrotTrouble {
	parrotTrouble true 6
	parrotTrouble true 7
	parrotTrouble false 6
	echo "true false false"
}


# Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
# makes10(9, 10) → true
# makes10(9, 9) → false
# makes10(1, 9) → true
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

function test_makes10 {
	makes10 9 10
	makes10 9 9
	makes10 1 9
	echo "true false true"
}


# Given an int n, return true if it is within 10 of 100 or 200. 
# Note: Math.abs(num) computes the absolute value of a number in java, 
# but this is bash so ur out of luck.
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

function test_nearHundred {
	nearHundred 93
	nearHundred 90
	nearHundred 89
	echo "true true false"
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

function test_posNeg {
	posNeg 1 -1 false
	posNeg -1 1 false
	posNeg -4 -4 true 
	echo "true true true"
}


# Given a string, return a new string where "not " 
# has been added to the front. However, if the string already 
# begins with "not", return the string unchanged. 
# notString("candy") → "not candy"
# notString("x") → "not x"
# notString("not bad") → "not bad"
function notString {
	string=$1
	first_three_letters=${string:0:3}
	if [ $first_three_letters = "not" ]; then 
		echo $string 
	else
		string="not $string"
		echo $string 
	fi
}

function test_notString {
	notString "candy"
	notString "x"
	notString "not bad"
	echo "not candy, not x, not bad"
}


function test_it {
	echo "testing notString"
	test_notString

	echo "testing posNeg"
	test_posNeg

	echo "testing nearHundred"
	test_nearHundred

	echo "testing makes10"
	test_makes10

	echo "testing parrotTrouble"
	test_parrotTrouble

	echo "testing diff21"
	test_diff21

	echo "testing sumDouble"
	test_sumDouble

	echo "testing monkeyTrouble"
	test_monkeyTrouble

	echo "testing sleepIn"
	test_sleepIn
}

test_it


