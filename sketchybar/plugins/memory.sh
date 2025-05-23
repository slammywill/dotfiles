#!/bin/sh

# Extract used and total memory from `top` (in Megabytes)
mem_info=$(top -l 1 -n 0 | grep PhysMem)

used=$(echo "$mem_info" | awk '{gsub("M", "", $2); print $2}')
unused=$(echo "$mem_info" | awk '{gsub("M", "", $6); print $6}')

# Calculate percentage
total=$(echo "$used + $unused" | bc)
usage_pct=$(echo "scale=0; 100 * $used / $total" | bc)

sketchybar -m --set topmem label="$usage_pct%"
