#!/bin/bash

npmTime=$(npm run build 2>&1 | grep 'Time' | awk -F' ' '{print $2}')
yarnTime=$(yarn build 2>&1 | grep 'Time' | awk -F' ' '{print $2}')

echo "The time of build by NPM is $npmTime"
echo "The time of the build by Yarn is $yarnTime"

if [[ $npmTime < $yarnTime ]]; then
    echo "NPM is the winner of the speed battle"
else 
    echo "Yarn is the winner of the speed battle"
fi
