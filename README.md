# Shell Script: Improper Handling of Empty Directories in File Processing

This repository demonstrates a common error in shell scripting: failure to handle cases where a directory is empty or contains only subdirectories when processing files. 

The script `bug.sh` attempts to iterate through files in a directory and perform operations on each file. However, it does not handle the scenario where no files are found. This can result in the script producing errors or not working as expected.  The solution provided demonstrates a robust way to address this issue.

## Bug Description
The main problem is that the script processes files within a loop without first checking if any files were found. If the directory is empty or contains only directories, the loop will not execute, leading to no output or unexpected behavior.

## Solution Description
The improved script (`bugSolution.sh`) adds a check to determine if any files were found before initiating the loop. This ensures that the script behaves correctly, even if there are no files to process.