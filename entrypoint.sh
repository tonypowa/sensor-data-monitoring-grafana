#!/bin/bash

# Run the test script
echo "Starting test script..."
sudo python3 test.py &

# Run the main application
echo "Starting main application..."
sudo python3 app.py
