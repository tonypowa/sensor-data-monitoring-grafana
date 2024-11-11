#!/bin/bash

# Run the test script
echo "Starting test script..."
python test.py &

# Run the main application
echo "Starting main application..."
python app.py
