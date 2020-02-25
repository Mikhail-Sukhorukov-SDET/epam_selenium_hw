""" Locators for maim page """
from selenium.webdriver.common.by import By


MAIN_PAGE_TITLE = (By.CSS_SELECTOR, 'h3[ui="title"]')
# image of main page
FIRST_IMAGE = (By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(1) span.icons-benefit")
SECOND_IMAGE = (By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(2) span.icons-benefit")
THIRD_IMAGE = (By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(3) span.icons-benefit")
FORTH_IMAGE = (By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(4) span.icons-benefit")
