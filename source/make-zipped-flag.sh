#!/bin/bash

# Flag value
flag_content="ATHACKCTF{j000n_c0nGr44tzzz_dis_iz_ur_fl4ggg}"

# A password that can be found in rockyou.txt
password="welostjester"

echo "$flag_content" > flag.txt

zip -P "$password" flag.zip flag.txt

if [ $? -eq 0 ]; then
    echo -e "\nflag.zip created successfully!"
else
    echo -e "\nFailed to create flag.zip."
    exit 1
fi

# Cleaning up
rm ./flag.txt