# Shell Scripts
## Password Generator Script
This Bash script generates a random password based on the difficulty level specified by the user. The script supports three difficulty levels: easy, medium, and hard.

### Usage
To run the script, use the following command:
```sh
./password_generator.sh [difficulty]
```

Replace `[difficulty]` with one of the following options:
`e` for easy
`m` for medium
`h` for hard

**Example**
```sh
./password_generator.sh e
```

### Difficulty Levels
**Easy** (`e`): Generates an 8-character password containing alphanumeric characters.
**Medium** (`m`): Generates a 12-character password containing alphanumeric characters and special characters (`.!#`).
**Hard** (`h`): Generates a 20-character password containing alphanumeric characters and a wider range of special characters (`.!#@,?^$`).

### Error Handling
If the script is run with an incorrect number of arguments or an invalid difficulty level, it will display an error message and exit.

### Error Messages
- “Please give the correct number of arguments!”
- “Wrong input!”

### Example Output
```sh
./password_generator.sh m
```
Output:
```sh
aB3!dE7#hJ9k is the generated password
```

## System Information Menu Script
This Bash script provides a menu-driven interface to display various system information such as hostname, kernel version, CPU details, memory usage, and disk usage. The user can choose an option from the menu to view the corresponding information.

### Usage
To run the script, use the following command:
```sh
./system_info.sh
```

The script will display a menu with the following options:
```sh
1)Hostname
2)Kernel
3)CPU
4)Memory
5)Disk-Usage
6)Exit
```
### Example
```sh
./system_info.sh
```
### Menu Options
1) Hostname: Displays the system’s hostname.
2) Kernel: Shows the kernel version.
3) CPU: Provides the CPU model name.
4) Memory: Displays the total, used, and free memory.
5) Disk-Usage: Shows the total, used, and free disk space for the /dev/sda4 partition.
6) Exit: Exits the script.

## Error Handling
If the user inputs an invalid option, the script will display “Wrong input!” and prompt the user to choose again.

## Example Output
```sh
Menu:
1) Hostname
2) Kernel
3) CPU
4) Memory
5) Disk-Usage
6) Exit
Choose a number between 1 and 6: 3
CPU: Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz
================
```

## Word Count Script
This Bash script counts the occurrences of each unique pair of words in a specified file. The script uses awk to process the file and output the word pairs along with their counts.

## Usage
To run the script, use the following command:
```sh
./syslog_events.sh [path-to-file]
```
Replace [path-to-file] with the path to the file you want to analyze.

### Example
./syslog_events.sh sample.txt

### Error Handling
The script takes one argument: the path to the file to be processed.
If no argument is provided, the script will display an error message and exit.

### Output
The script outputs the count of each unique pair of words in the specified file. The output format is:
```sh
[count] [word pair]
```

## Directory Analysis Script
This Bash script performs various analyses on a specified directory, including finding the five largest files, identifying files with more than one hard link, and listing files without read permission.

### Usage
To run the script, use the following command:
```sh
./directory_info.sh [path-to-directory]
```
Replace [path-to-directory] with the path to the directory you want to analyze.

### Example
```sh
./directory_info.sh /path/to/directory
```

### Script Details
- The script takes one argument: the path to the directory to be analyzed.
- If no argument is provided, the script will display an error message and exit.

### Error Handling
If the script is run without an argument, it will display the following message and exit:
```sh
Please give a directory as argument
./directory_info.sh [path-to-directory]
```

### Output
The script provides the following information:

5 Biggest Files: Lists the five largest files in the specified directory.
Files with More Than One Hard Link: Lists files that have more than one hard link.
Files Without Read Permission: Lists files that do not have read permission.

### Example Output
```sh
5 biggest files in directory /path/to/directory:
file1.txt
file2.log
file3.bin
file4.iso
file5.tar

Files with more than one hard link:
file6.txt
file7.log

Files without read permission:
file8.conf
file9.dat
```


## SSL Certificate Expiration Checker
This shell script checks the expiration date of the SSL certificate for a specified website and informs you whether the certificate has expired.

### Usage
Run the script from the command line, providing the website's domain as an argument:

```sh
./ssl_certificate.sh [website]
```

### Example
```sh
./ssl_certificate.sh example.com
```

### Output
- If the SSL certificate is valid and has not expired, the script will output the expiration date:
```sh
Date of website example.com ssl expires is Aug 30 12:00:00 2024 GMT.
```
- If the SSL certificate has expired, the script will indicate the expiration date:
```sh
SSL has expired for website example.com Date: Aug 30 12:00:00 2023 GMT.
```
- If the SSL certificate information cannot be retrieved, the script will notify you:
```sh
Unable to get date of ssl expires for website example.com.
```
### Requirements
Ensure that `openssl` is installed on your system, as the script uses it to retrieve SSL certificate information.
