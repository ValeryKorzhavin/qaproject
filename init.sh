#!/bin/bash

sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/etc/hello.py   /etc/gunicorn.d/wsgi.example
sudo service gunicorn restart
