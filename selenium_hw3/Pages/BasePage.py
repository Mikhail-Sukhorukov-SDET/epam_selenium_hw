import selenium_hw3.Pages.BasePageLocators as locators
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import selenium.common.exceptions as ex
import allure


class BasePage():
    """ Methods and data that the same for all pages """
    # test data
    USER_NAME = "PITER CHAILOVSKII"
    HOME_MENU = "HOME"
    CONTACT_FORM_MENU = "CONTACT FORM"
    SERVICE_MENU = "SERVICE"
    METALS_COLORS_MENU = "METALS & COLORS"
    # login creds
    LOGIN = "epam"
    PASSWORD = "1234"
    # data for select options
    HOME = "home"
    SERVICE = "services"
    CONTACT_FORM = "contact_form"
    METALS_COLORS = "metals_colors"

    def __init__(self, browser):
        self.browser = browser

    @allure.step("Login with selected parameters")
    def perform_login(self):
        """ Perform login """
        self.browser.find_element(*locators.USER_ICON_BUTTON).click()
        self.browser.find_element(*locators.USER_NAME_TEXT_INPUT).send_keys(BasePage.LOGIN)
        self.browser.find_element(*locators.USER_PASSWORD_TEXT_INPUT).send_keys(BasePage.PASSWORD)
        self.browser.find_element(*locators.SUBMIT_BUTTON).click()

    @allure.step("Get text of user name")
    def get_username(self):
        """ Get text of user name """
        return self.browser.find_element(*locators.USER_NAME_TEXT).text

    @allure.step("Get text of header menu by argument")
    def get_header_menu_text(self, menu):
        """ Get text of header menu by argument """
        if menu == BasePage.HOME:
            home = self.browser.find_element(*locators.HOME_LINK).text
            return home
        elif menu == BasePage.SERVICE:
            services = self.browser.find_element(*locators.SERVICE_LINK).text
            return services
        elif menu == BasePage.CONTACT_FORM:
            contact_form = self.browser.find_element(*locators.CONTACT_FORM_LINK).text
            return contact_form
        elif menu == BasePage.METALS_COLORS:
            metals_colors = self.browser.find_element(*locators.METALS_COLORS_LINK).text
            return metals_colors

    @allure.step("Method should check displaying of something")
    def wait_until_displayed(self, locator, timeout=5):
        """ Method should check displaying of something
        return True if it was displayed (by timeout=5)
        or False if not  """
        try:
            WebDriverWait(self.browser, timeout).until(EC.visibility_of_element_located(locator))
            return True
        except ex.TimeoutException:
            return False

    @allure.step("Method should check displaying of something just on time")
    def displayed(self, locator, timeout=0):
        """ Method should check displaying of something just on time
        return True if it was displayed (by timeout)
        or False if not  """
        try:
            WebDriverWait(self.browser, timeout).until(EC.visibility_of_element_located(locator))
            return True
        except ex.TimeoutException:
            return False



