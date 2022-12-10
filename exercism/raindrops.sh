# my sol
#!/usr/bin/env bash
num=$1
res=''
if [ $((num % 3)) -eq 0 ]; then
    res="Pling"
fi
if [ $((num % 5)) -eq 0 ]; then
    res="${res}Plang"
fi
if [ $((num % 7)) -eq 0 ]; then
    res="${res}Plong"
fi
if [ "$res" = '' ]; then
    echo "$num"
else
    echo "$res"
fi

# meientau's sol
(( $1 % 3 )) || result+=Pling
(( $1 % 5 )) || result+=Plang
(( $1 % 7 )) || result+=Plong
echo ${result:-$1}
