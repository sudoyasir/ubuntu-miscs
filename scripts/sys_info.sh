# This script will print system information.
#!/bin/bash
echo "Operating System: $(uname -a)"
echo "Kernel Version: $(uname -r)"
echo "CPU Information: $(lscpu)"
echo "Memory Information: $(free -m)"
echo "Disk Usage: $(df -h)"
