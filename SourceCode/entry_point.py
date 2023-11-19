# Author            : CyberT
# Version           : 1.0
# Description       : Allows to download whole playlist from the Internet
# Follow on GitHub  : https://github.com/CyberT05

from subprocess import run, CalledProcessError
from sys import exit


def main():
    try:
        run("controller.bat", shell=True, check=True)
    except CalledProcessError as e:
        print(f"Error running batch file: {e}")
        exit(1)


if __name__ == "__main__":
    main()
