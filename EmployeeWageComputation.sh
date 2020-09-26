#/bin/bash
#Displying welcome to employee wage computation program
echo "Welcome To EmployeeWageComputaion program"
#Set "1" to indicate employee is present.
#Constant
IS_EMPLOYEE_PRESENT=1;
IS_EMPLOYEE_ABSENT=0;
IS_EMPLOYEE_FULLTIME=1;
IS_EMPLOYEE_PARTTIME=0;
WAGE_PER_HOUR=20;
WORKING_DAYS_PER_MONTH=20;
MAX_WORKING_HOURSE=100;
MAX_WORKING_DAYS=20;
#Variable
Emp_Total_Working_Hourse=0;
Emp_Total_Working_Days=0;

while [[ $Emp_Total_Working_Hourse -lt $MAX_WORKING_HOURSE && $Emp_Total_Working_Days -lt $MAX_WORKING_DAYS ]]
do
	((Emp_Total_Working_Days++));
	JobType=$(($RANDOM%2));
	case $JobType in
		$IS_EMPLOYEE_FULLTIME)
	    	#If JobType value is '1'.
	    	echo "This is Full Time Employee."
	    	Day_Hour=8;
	    	;;
		$IS_EMPLOYEE_PARTTIME)
	    	#If JobType value is '2'.
	    	echo "This is Part Time Employee."
	    	Day_Hour=4;
	    	;;
		*) Day_Hour=0; ;;

	esac

	Emp_Total_Working_Hourse=$(( $Emp_Total_Working_Hourse + $WAGE_PER_HOUR ));


done

#calculation of employee wage for one day.
#Day_Salary_Of_Employee=$(( $WAGE_PER_HOUR * $Day_Hour ))
#calculation of employee wage for month.
#Month_Salary_Of_Employee=$(($Day_Salary_Of_Employee * $WORKING_DAYS_PER_MONTH ))
#echo "Value of : " $Day_Hour
#echo "Your today's salary is,Rupees" $Salary_Of_Employee
#echo "Your Monthly Salary creadited to your account,Rupees" $Month_Salary_Of_Employee
Employee_Total_Salary=$(($Emp_Total_Working_Hourse * $WAGE_PER_HOUR ))
echo "Employee salary for 100 hrs and 20 days is: " $Employee_Total_Salary

