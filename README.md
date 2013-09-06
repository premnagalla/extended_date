# Extended Date Class

Extended methods for Date class, to get first days of month (first sunday, first thursday etc.)

## METHODS AVAILABLE:

### Class Methods:
Date.first_day_of_month_for(dat,day)
- dat can be, date object / date string
- day can be, case insensitive string of weekdays / below mentioned numbers representing weekdays
Date.wednesday_of_year(week, year)
- week is week number starting from Jan 1 as week 1
- year can be any valid year

### Instance Methods:
first_day_of_month(day)
- day can be, case insensitive string of weekdays / below mentioned numbers representing weekdays

#### We can use these below numbers as well for week days

-    sunday		- 0
-    monday		- 1
-    tuesday		- 2
-    wednesday		- 3
-    thursday		- 4
-    friday		- 5
-    saturday		- 6

next_wednesday


## Usage

### Instance Methods:
-    Date.today.first_day_of_month("sunday")
-    Date.today.first_day_of_month("MONDAY")
-    Date.today.first_day_of_month("3")  --> returns first wednesday of the month
-    Date.today.first_day_of_month(6)    --> returns first saturday of the month
-    Date.today.next_wednesday           --> returns next wednesday from today

### Class Methods:
-    Date.first_day_of_month_for(Date.today,"3")   		--> returns first wednesday of todays month
-    Date.first_day_of_month_for("2012-03-15","wednesday")   	--> returns first wednesday of given day's month
-    Date.wednesday_of_year(3, 2013)   	 --> returns date object of wednesday in xth week in a year


