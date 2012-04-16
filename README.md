# Extended Date Class

Extended methods for Date class, to get first days of month (first sunday, first thursday etc.)

## METHODS AVAILABLE:

### Class Methods:
Date.first_day_of_month_for(dat,day)
- dat can be, date object / date string
- day can be, case insensitive string of weekdays / below mentioned numbers representing weekdays

### Instance Methods:
first_day_of_month(day)
- day can be, case insensitive string of weekdays / below mentioned numbers representing weekdays

#### We can use these below numbers as well for week days

1. sunday		- 0
2. monday		- 1
3. tuesday		- 2
4. wednesday		- 3
5. thursday		- 4
6. friday		- 5
7. saturday		- 6

## Usage

### Instance Methods:
Date.today.first_day_of_month("sunday")
Date.today.first_day_of_month("MONDAY")
Date.today.first_day_of_month("3")  --> returns first wednesday of the month
Date.today.first_day_of_month(6)    --> returns first saturday of the month

### Class Methods:
Date.first_day_of_month_for(Date.today,"3")   		--> returns first wednesday of todays month
Date.first_day_of_month_for("2012-03-15","monday")   	--> returns first wednesday of todays month


