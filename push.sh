#!/bin/bash

# append character to fakeWork.txt
echo "a" >> fakeWork.txt

# push work, concerned about if this will work in all terminals (like ones with logins maybe won't work?)
git add .
git commit -m "worked hard"
git push