""" Locators for elements that for all pages """
from selenium.webdriver.common.by import By

USER_ICON_BUTTON = (By.CSS_SELECTOR, '#user-icon')
SUBMIT_BUTTON = (By.CSS_SELECTOR, '#login-button')
USER_NAME_TEXT_INPUT = (By.CSS_SELECTOR, '#name')
USER_PASSWORD_TEXT_INPUT = (By.CSS_SELECTOR, '#password')

USER_NAME_TEXT = (By.CSS_SELECTOR, '#user-name')

# header menu
HOME_LINK = (By.CSS_SELECTOR, 'ul.nav > li:nth-child(1) a')
CONTACT_FORM_LINK = (By.CSS_SELECTOR, 'ul.nav > li:nth-child(2) a')
SERVICE_LINK = (By.CSS_SELECTOR, 'ul.nav > li.dropdown > a')
METALS_COLORS_LINK = (By.CSS_SELECTOR, 'ul.nav > li:nth-child(4) a')
