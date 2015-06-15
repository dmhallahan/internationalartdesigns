#!/bin/bash
clear
rake db:migrate
rails server -e production


