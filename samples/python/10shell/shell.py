import os
import shlex
import sys


def print_current_working_directory():
    print(os.getcwd())

def change_directory(directory):
    os.chdir(directory)

def list_directory_contents():
    """
    List the contents of the current directory.
    """
    contents = os.listdir(os.getcwd())
    for content in contents:
        print(content)

def cat_file(filename):
    with open(filename, "r") as f:
        for line in f:
            print(line, end="")

def print_prompt():
    sys.stdout.write("> ")
    sys.stdout.flush()

def main():
    print_prompt()
    for line in sys.stdin:
        command = shlex.split(line)
        if len(command) == 0:
            print_prompt()
            continue
        if command[0] == "cd":
            change_directory(command[1])
        elif command[0] == "ls":
            list_directory_contents()
        elif command[0] == "cat":
            cat_file(command[1])
        elif command[0] == "pwd":
            print_current_working_directory()
        else:
            print("Unknown command")
        print_prompt()


if __name__ == '__main__':
    main()