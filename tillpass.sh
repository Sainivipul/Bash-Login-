#!/bin/bash

echo "your name please "
read val
echo $val|grep "^[a-zA-Z]*$"
val="$?"
if [[ $val == 0 ]]
then   
read -p "Enter Age:" age

echo "$age"|grep "^[0-9]*$"
age="$?"

if [[ $age == 0 ]]
then
regex="^(([-a-zA-Z0-9\!#\$%\&\'*+/=?^_\`{\|}~]+|(\"([][,:;<>\&@a-zA-Z0-9\!#\$%\&\'*+/=?^_\`{\|}~-]|(\\\\[\\ \"]))+\"))\.)*([-a-zA-Z0-9\!#\$%\&\'*+/=?^_\`{\|}~]+|(\"([][,:;<>\&@a-zA-Z0-9\!#\$%\&\'*+/=?^_\`{\|}~-]|(\\\\[\\ \"]))+\"))@\w((-|\w)*\w)*\.(\w((-|\w)*\w)*\.)*\w{2,4}$"
echo "ENTER THE E-MAIL ADDRESS"
read i

if [[ $i =~ $regex ]] ; then
    echo "enter the password"
read password
len="${#password}"
if test $len -ge 8 ; then
   echo "$password" | grep -q [0-9]
      if test $? -eq 0 ; then
          echo "$password" | grep -q [A-Z]


                if test $? -eq 0 ; then


                    echo "$password" | grep -q [a-z]   


                      if test $? -eq 0 ; then


                       echo 
read -s -p "password (again): " password2

# check if passwords match and if not ask again
while [ "$password" != "$password2" ];
do
    echo 
    echo "Please try again"
    read -s -p "Password: " password
    echo
    read -s -p "Password (again): " password2
done


echo "Please Enter User Name "
read Usname
echo "thank you for Login $Usname "
                     echo "you are now member of this Platform kindly enjoy the  workspace "
                    sudo  useradd -m -p $password $Usname
                     echo "User added succesfully"
                    cat  /etc/passwd
                   else


                       echo "weak password include lower case char"


                   fi


            else


               echo "weak password include capital char" 


            fi


     else


       echo "please include the numbers in password it is weak password"   


     fi


else


    echo "password lenght should be greater than or equal 8 hence weak password"


fi
else
    echo "Invalid mail id "
fi


      else
           echo "age can be a number"
     exit
     fi

   
else
        echo "Invalid input"
exit
fi
