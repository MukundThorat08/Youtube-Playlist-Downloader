@echo off
color A
echo """"""                                                                                                     """"""
echo "                                                                                                               "
ping 127.0.0.1 -n 1.0 > nul
echo "         ________                __________ ____            ____ ___   _______        ___ _________            "
ping 127.0.0.1 -n 1.1 > nul
echo "        |    ____|              /    __    \\   \          /   /|   | |       \      |   |    __    \          "
ping 127.0.0.1 -n 1.2 > nul
echo "        |   |       ___________|    /  \    |\   \        /   / |   | |    _   \     |   |   |   \   \         "
ping 127.0.0.1 -n 1.3 > nul
echo "        |   |      |    ___    |   |    |   | \   \      /   /  |   | |   | \   \    |   |   |    |   |        "
ping 127.0.0.1 -n 1.4 > nul
echo "        |   |      |   |   |   |   |    |   |  \   \    /   /   |   | |   |  \   \   |   |   |    |   |        "
ping 127.0.0.1 -n 1.5 > nul
echo "        |   |      |   |   |   |   |    |   |   \   \  /   /    |   | |   |   \   \  |   |   |    |   |        "
ping 127.0.0.1 -n 1.6 > nul
echo "        |   |______|   |   |   |   |    |   |    \   \/   /     |   | |   |    \   \ |   |   |    |   |        "
ping 127.0.0.1 -n 1.7 > nul
echo "        |              |   |   |    \__/    |     \      /      |   | |   |     \   \|   |   |___/   /         "
ping 127.0.0.1 -n 1.8 > nul
echo "        |______________|   |___|\__________/       \____/       |___| |___|      \_______|__________/          "
ping 127.0.0.1 -n 1.9 > nul
echo "                                                                                                               "
ping 127.0.0.1 -n 1.8 > nul
echo "                                                                                                               "
ping 127.0.0.1 -n 1.7 > nul
echo """"""                                                                                                     """"""
ping 127.0.0.1 -n 1.6 > nul
set /p playlist="Paste url here : "
ping 127.0.0.1 -n 1.7 > nul
call "src/data_fetcher.py" %playlist%
taskkill /f /im chrome.exe
start /d "C:\Program Files (x86)\Internet Download Manager" IDMan.exe
call "src/idm_controller.py"
exit
