#!/bin/sh

# Get disk usage info for root volume
disk_info=$(df / | tail -1)

# Extract used and total disk space in GB
avail=$(echo "$disk_info" | awk '{print $4}' | sed 's/G//')
total=$(echo "$disk_info" | awk '{print $2}' | sed 's/G//')

# Compute used percentage
used_pct=$(echo "scale=0; 100 * ($total - $avail) / $total" | bc)

# Output to sketchybar
sketchybar --set disk label="${used_pct}%"
