#!/bin/bash
# Multi-tool script for calculator, file count, greetings, and temperature conversion

while true; do
    echo "====================================="
    echo "     🧮 Multi-Function Bash Tool"
    echo "====================================="
    echo "1. Calculator"
    echo "2. Count files in current directory"
    echo "3. Greet multiple names"
    echo "4. Temperature converter (C to F)"
    echo "5. Exit"
    echo "====================================="

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            echo "------ Calculator ------"
            read -p "Enter first number: " num1
            read -p "Enter operator (+, -, *): " op
            read -p "Enter second number: " num2

            case $op in
                +)
                    result=$((num1 + num2))
                    ;;
                -)
                    result=$((num1 - num2))
                    ;;
                \*)
                    result=$((num1 * num2))
                    ;;
                *)
                    echo "Invalid operator! Please use +, -, or *."
                    ;;
            esac

            echo "Result: $result"
            ;;
        
        2)
            echo "------ Count Files ------"
            count=$(ls -1 | wc -l)
            echo "Number of files in current directory: $count"
            ;;
        
        3)
            echo "------ Greeting Names ------"
            while true; do
                read -p "Enter a name (or type 'done' to stop): " name
                if [[ "$name" == "done" ]]; then
                    echo "Goodbye!"
                    break
                fi
                echo "Hello, $name!"
            done
            ;;
        
        4)
            echo "------ Temperature Converter ------"
            read -p "Enter temperature in Celsius: " celsius
            fahrenheit=$(echo "scale=2; $celsius * 9/5 + 32" | bc)
            echo "$celsius°C = $fahrenheit°F"
            ;;
        
        5)
            echo "Exiting... 👋"
            break
            ;;
        
        *)
            echo "Invalid choice! Please enter 1–5."
            ;;
    esac

    echo ""
done
