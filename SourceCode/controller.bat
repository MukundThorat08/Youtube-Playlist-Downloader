@echo off
color A
echo """"""                                                                                                     """"""
echo "                                                                                                               "
echo "                               +___               ____+____________________+                                   "
echo "                               |    \            /    |________    ________|                                   " 
echo "                               |     \          /     |        |  |                                            "
echo "                               |  |\  \        /  /|  |        |  |                                            "
echo "                               |  | \  \      /  / |  |        |  |                                            "
echo "                               |  |  \  \    /  /  |  |        |  |                                            "
echo "                               |  |   \  \  /  /   |  |        |  |                                            "
echo "                               |  |    \  \/  /    |  |        |  |                                            "
echo "                               |  |     \    /     |  |        |  |                                            "
echo "                               |__|      \__/      |__|        |__|                                            "
echo "                                                                                                               "
echo "                                                                                                               "
echo """"""                                                                                                     """"""
set /p playlist="Paste url here : "
call "src/data_fetcher.py" %playlist%
taskkill /f /im chrome.exe
start /d "C:\Program Files (x86)\Internet Download Manager" IDMan.exe
call "src/idm_controller.py"
exit
