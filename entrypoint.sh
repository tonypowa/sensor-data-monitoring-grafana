#!/bin/bash

# Run the test script
echo "Starting test script..."
python3 test.py &

# Run the main application
echo "Starting main application..."
python3 app.py
