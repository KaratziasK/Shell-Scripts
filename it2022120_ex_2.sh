#!/bin/bash


while true; do
    echo "Menu:"
    echo "1) Hostname"
    echo "2) Kernel"
    echo "3) CPU"
    echo "4) Memory"
    echo "5) Disk-Usage"
    echo "6) Exit"
    read -r -p "Choose a number between 1 and 6: " choice

    case "$choice" in
        1)
            echo "Hostname: $(hostname)"
            ;;
        2)
            echo "Kernel: $(uname -r)"
            ;;
        3)
            echo "CPU: $(lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^[ \t]*//')"
            ;;
        4)
            echo "Memory: $(free -h | grep "Mem:" | awk '{printf "Total: %s Used: %s Free: %s\n", $2, $3, $4}')"
            ;;
        5)
                echo "Disk Usage: $(df -h | grep "/dev/sda4" | awk '{printf "Total: %s Used: %s Free: %s\n", $2, $3, $4}')"
            ;;
        6)
            echo "Exit"
            break
            ;;
        *)
            echo "Wrong input!"
            ;;
    esac
    echo "================"
done
