<< comment
for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do
        bash /home/bob/create-and-launch-rocket $mission
done
comment

:'
for mission_name in $(cat /home/bob/mission-names.txt)
do
    bash /home/bob/create-and-launch-rocket $mission_name
done
'


for n in {31..40}
do      
        echo $n
done    


<<comment
-------------------------------------
We have a few different applications running on this system.
 The list of applications is stored in the /home/bob/apps.txt file. 
 Each application has it's logs stored in the /var/log/apps directory under a file with its name. Check it out!
 A simple version of the script has been developed for you named /home/bob/count-requests.sh, 
 which inspects the log file of an application and prints the number of GET, POST, and DELETE requests. 
 Update the script to use a for loop to read the list of applications from the apps.txt file, a
 nd count the number of requests for each application, and display it in a tabular format like this.
 


    
echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

for app in $(cat /home/bob/apps.txt)
do
  get_requests=$(cat /var/log/apps/${app}_app.log | grep "GET" | wc -l)
  post_requests=$(cat /var/log/apps/${app}_app.log | grep "POST" | wc -l)
  delete_requests=$(cat /var/log/apps/${app}_app.log | grep "DELETE" | wc -l)
  echo -e " ${app}    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"

done




e have some images under the directory /home/bob/images.
 Develop a script /home/bob/rename-images.sh to rename all files within the images folder that has extension jpeg to jpg. 
A file with any other extension should remain the same.

for file in $(ls images)
do
        if [[ $file = *.jpeg ]]
                then
                new_name=$(echo $file| sed 's/jpeg/jpg/g')
                mv images/$file images/$new_name
        fi
done





#WHILE    -- print from 0 to given no:q!

to_number=$1
number=0
while [ $number -lt $to_number ]
do
  echo $(( number++ ))
done
~         



###calculator


while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choice: " choice

  if [ $choice -eq 1 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 + $number2 ))
  elif [ $choice -eq 2 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 - $number2 ))
  elif [ $choice -eq 3 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 * $number2 ))
  elif [ $choice -eq 4 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 / $number2 ))
  elif [ $choice -eq 5 ]
  then
    break
  fi

done




#CASE

while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choice: " choice

  case $choice in
    1)
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 + $number2 ))
        ;;
    2)
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 - $number2 ))
        ;;

    3)
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 * $number2 ))
        ;;
    4)
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 / $number2 ))
        ;;
    5)
        break
        ;;
  esac

done




#case ---- prints with color

color=$1
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

    case $color in
        red) echo "${red}this is red${reset}";;
        green) echo "${green}this is green${reset}";;
        *) echo "red and green are the only choices";;
    esac
~          

comment
      





