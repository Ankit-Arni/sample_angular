#!/bin/bash

npm install
if [ \${ACTION} = "BUILD" ]; then
    npm init -y
    npm i --save express
    pm2 start app.js
elif [ \${ACTION} = "TEST" ]; then
    npm i --save-dev supertest should mocha
    cd ./test
    mocha
fi
