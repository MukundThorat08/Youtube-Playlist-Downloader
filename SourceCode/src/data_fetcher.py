from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from pyperclip import copy
from sys import argv
from os import getcwd


def building_necessary_chrome_drivers():
    chrome_options = Options()
    chrome_options.add_experimental_option("detach", True)
    service_object = Service(executable_path=getcwd()+"\\Imports\\chromedriver.exe")
    try:
        access = webdriver.Chrome(service=service_object, options=chrome_options)
        access.get("https://youtubemultidownloader.net/playlists.html")
        return access
    except Exception as e:
        print("Something went wrong : ", e)
        print("Check Internet connection!")


class Search:
    def __init__(self, youtube_url):
        self.playListUrl = youtube_url
        self.driver = building_necessary_chrome_drivers()

    def pasting_playlist_url(self):
        query = self.driver.find_element(By.ID, "inputPlaylist")
        query.send_keys(Keys.ENTER)     # activating search box

        copy(self.playListUrl)
        query.send_keys(Keys.CONTROL+'v')

    def is_fetching_data_completed(self) -> bool:
        slider = self.driver.find_element(By.ID, "lbStatus")
        slider_parent_container = self.driver.find_element(By.CLASS_NAME, "progress")

        while True:
            if slider_parent_container.size['width'] == slider.size['width']:
                return True

    def getting_urls_to_txt_file(self):
        text_area = self.driver.find_element(By.ID, "txtDownload")
        with open(getcwd()+"\\Exports\\urls.txt", 'w') as file:
            file.write(text_area.get_attribute("value"))


def sequence_setter():
    instance = Search(argv[1])
    instance.pasting_playlist_url()
    if instance.is_fetching_data_completed():
        instance.getting_urls_to_txt_file()


if len(argv) > 1:   # check the presence of transferred playlist_url
    sequence_setter()
