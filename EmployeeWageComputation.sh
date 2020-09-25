#/bin/bash
#Displying welcome to employee wage computation program
echo "Welcome To EmployeeWageComputaion program"
#Set "1" to indicate employee is present.
#Constant
IS_EMPLOYEE_PRESENT=1;
IS_EMPLOYEE_FULLTIME=1;
IS_EMPLOYEE_PARTTIME=0
#Variable
Random_No_Check=$(($RANDOM%2));
if [[ $IS_EMPLOYEE_PRESENT -eq $Random_No_Check ]];
then
		#If Random_No_check value is '1'
		echo "Employee is present"
		JobType=$(($RANDOM%2))
		if [[ $IS_EMPLOYEE_FULLTIME -eq $JobType ]]
		then
			#If JobType value is '1'.
			echo "This is Full Time Employee"
			Wage_Per_Hour=20;
			Full_Day_Hour=8;
			#calculate total salary of employee
			Salary_Of_Employee=$(( $Wage_Per_Hour * $Full_Day_Hour ))
		else
			echo "This is Part Time Employee"
			Wage_Per_Hour=20;
			Half_Day_Hour=4;
			#Wage calculation for part time employee
			Salary_Of_Employee=$(( $Wage_Per_Hour * $Half_Day_Hour ))
		fi
else
	#If random_No_Check value is '0'.
	echo "Employee is absent"
	Salary_Of_Employee=0;
fi
echo "Your salary is creadited to your account,Rupees" $Salary_Of_Employee
