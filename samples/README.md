# Code Samples
This directory contains various code samples. The idea is that I'll try to create the same thing in each of the languages in this directoy.

## Concepts
Each sample will be used to add on an additional concept (or two) on top of the previous sample. Underneath of each project description is the list of 'core concepts' that it teaches.

## Current/Planned Examples
### 0. `hello`

The old fashioned hello world script.

New Concepts:
* Environment Setup
* Printing/Interacting with stdout.

### 1. `Multiplication Table`

A script which prints out a 5x5 multiplication table

New Concepts:
* String Formatting
* Integer operations (does that count?)

### 2. `Reverse Arguments`

This script takes in an arbitrary number of cli args, and will print them out in reverse order, or one line (so they could be piped into xargs or something).

New Concepts:
* Argument Interaction
* List Manipulation
* Loops

### 3. `sqrt`

This scripts take in an arbitrary number of cli args, and will print out the sqrt of each of them.

New Concepts:
* Loops if not covered in 2
* Type conversion from strings to integers/floats

### 4. `primality`

This script takes in an arbitrary number of cli arguments, and attempts to determine whether or not they are primary numbers.

New Concepts:
* Interaction with libraries/modules if not included in previous lessons

### 5. `wc`

Like the `wc` command, Basically either uses the file provided in a cli arg or will read from stdin. Counts the number of characters and new lines in a file.

New Concepts:
* Branching logic based of whether an argument is provided
* Reading from stdin 

### 6. `Efficient sqrts`

A modificaation of the `sqrt` script to use multiple threads/process for each sqrt job (if possible)

New Concepts:
* threading/multiprocessing
* piping if using multiprocessing (depending on the language)
