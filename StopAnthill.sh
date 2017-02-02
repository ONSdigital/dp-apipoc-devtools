#!/bin/bash

kill $(lsof -n -i :3000 | awk '/LISTEN/ {print $2}')