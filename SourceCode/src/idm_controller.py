from pyautogui import press, write
from time import sleep
from os import getcwd
from pygetwindow import getWindowsWithTitle, PyGetWindowException

if __name__ == "__main__":
    try:
        idm_window = getWindowsWithTitle('Internet Download Manager')
        idm_window[0].activate()
    except PyGetWindowException as e:
        print("Error Accessing and activating idm : ", e)
    except Exception as e:
        print("Something went wrong : ", e)

    sleep(0.5)
    # opening url.txt file
    press('alt')
    write('t')
    write('i')
    write('t')

    sleep(0.5)
    write(getcwd()+"\\Exports\\urls.txt")
    press('enter')
