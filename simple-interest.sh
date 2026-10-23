
#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "    Simple Interest Calculator"
echo "================================"

# Take input from user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (Years): " time

# Calculate Simple Interest
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {printf "%.2f", (p*r*t)/100}')

# Calculate Total Amount
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN {printf "%.2f", p+i}')

# Display Results
echo "================================"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "================================"
