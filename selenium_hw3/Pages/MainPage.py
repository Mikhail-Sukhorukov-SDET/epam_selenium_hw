""" Methods for Main page """
import selenium_hw3.Pages.MainPageLocators as locators
from selenium_hw3.Pages.BasePage import BasePage
import allure


class MainPage(BasePage):
    # test data
    HOME_PAGE_TITLE = "Home Page"

    @allure.step("Wait until main page displayed")
    def wait_until_main_page_displayed(self):
        """ Method should check displaying of Main Page title
        if it displayed - return True
        if not - False """
        return self.wait_until_displayed(locators.MAIN_PAGE_TITLE)

    @allure.step("Check displaying of image by argument")
    def check_displaying_of_image(self, number):
        """ Method should check displaying of images on main page
        if it displayed - return True
        if not - False """
        if number == 1:
            return self.displayed(locators.FIRST_IMAGE)
        elif number == 2:
            return self.displayed(locators.SECOND_IMAGE)
        elif number == 3:
            return self.displayed(locators.THIRD_IMAGE)
        elif number == 4:
            return self.displayed(locators.FORTH_IMAGE)


