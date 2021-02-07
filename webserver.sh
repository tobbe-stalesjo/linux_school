#!/bin/bash

sudo apt install nginx -y       # Installerar nginx på server

# Ändrar index fil så det står vad jag vill
echo "<!DOCTYPE html>           
<html>
<head>
<title>Welcome to my page!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to my page!</h1>
<p>My name is Tobbe.</p>

</body>
</html>" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null

# kollar hur localhosten ser ut
curl localhost 