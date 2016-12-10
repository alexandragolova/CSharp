#Coloring Christmas Tree
 function RandomColor()
{
    randomNumber=$(($RANDOM % 3))
    case $randomNumber in
        "1")
            echo -e "\e[31m*"
            ;;
        "2")
            echo -e "\e[32m*"
            ;;
        "0")
            echo -e "\e[97m*"
            ;;
    esac
}  

#Input size and year
echo "Enter tree size:"
read size
echo "Enter year:"
read year
echo

#Tree
cntSpace=$(($size - 1))
cntSymbols=0

for i in $(seq 1 $size)
do
    for j in $(seq 1 $cntSpace)
    do
        echo -n " "
    done
    cntSpace=$(($cntSpace - 1))
    for k in $(seq 1 $cntSymbols)
    do
        echo -n "* "
    done
    cntSymbols=$(($cntSymbols + 1))
    RandomColor
    #echo -e "*"
done

#Stem
stem=$(($size / 2))
stemSpace=$(($stem+1))

for i in $(seq 1 $stemSpace)
do
    echo -n " "
done

for j in $(seq 1 $stemSpace)
do
    echo -ne "*"
done
echo
#Show: ЧНГ $year
for i in $(seq 1 $(($size -5)))
do
    echo -n " "
done
echo -n 'ЧНГ '
echo $year
