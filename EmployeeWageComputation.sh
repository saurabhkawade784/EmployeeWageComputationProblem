#/bin/bash
#Displying welcome to employee wage computation program
echo "Welcome To EmployeeWageComputaion program"
#Set "1" to indicate employee is present.
#Constant
IS_EMPLOYEE_PRESENT=1;
IS_EMPLOYEE_ABSENT=0;
IS_EMPLOYEE_FULLTIME=1;
IS_EMPLOYEE_PARTTIME=0;
WORKING_DAYS_In_MONTH=20;
#Variable
JobType=0;
Salary_Of_Employee=0;
Wage_Per_Hour=0;
Full_Day_Hour=0;
Half_Day_Hour=0;
Random_No_Check=$(($RANDOM%2));
case $Random_No_Check in
	$IS_EMPLOYEE_PRESENT)#If Random_No_check value is '1'
		    echo "Employee is present"
		    JobType=$(($RANDOM%2))
		    if [[ $IS_EMPLOYEE_FULLTIME -eq $JobType ]]
		    then
		    	#If JobType value is '1'.
			echo "This is Full Time Employee.)"
			Wage_Per_Hour=20;
			Full_Day_Hour=8;
			#calculate total salary of employee
			Day_Salary_Of_Employee=$(( $Wage_Per_Hour * $Full_Day_Hour ))
			Month_Salary_Of_Employee=$(($Day_Salary_Of_Employee * $WORKING_DAYS_In_MONTH ))
		    else
			echo "This is Part Time Employee"
			Wage_Per_Hour=20;
			Half_Day_Hour=4;
			#Wage calculation for part time employee
			HalfDay_Salary_Of_Employee=$(( $Wage_Per_Hour * $Half_Day_Hour ))
			Month_Salary_Of_Employee=$(( $HalfDay_Salary_Of_Employee * $WORKING_DAYS_In_MONTH))
		    fi
		;;

	$IS_EMPLOYEE_ABSENT)
		#If random_No_Check value is '0'.
		echo "Employee is absent"
		Salary_Of_Employee=0;
		Month_Salary_Of_Employee=0;
		;;

esac
echo "Your today's salary is,Rupees" $Salary_Of_Employee
echo "Your Monthly Salary creadited to your account,Rupees" $Month_Salary_Of_Employee
