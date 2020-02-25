from selenium_hw3 import environment as env
from selenium_hw3.Pages.MainPage import MainPage
from selenium_hw3.Pages.BasePage import BasePage
import pytest


# run in directory selenium_hw/selenium_hw3 with: pytest -n4

@pytest.mark.parametrize("number_of_image", (1, 2, 3, 4), ids=["the first", "the second", "the third", "the forth"])
def test_hw3_ex1(browser, number_of_image):
    browser.get(env.url)
    main_page = MainPage(browser)
    assert main_page.HOME_PAGE_TITLE == browser.title
    print(main_page.wait_until_main_page_displayed())
    main_page.wait_until_main_page_displayed()
    main_page.perform_login()
    user_name = main_page.get_username()
    assert user_name == BasePage.USER_NAME
    assert main_page.HOME_PAGE_TITLE == browser.title
    header_home_menu = main_page.get_header_menu_text(BasePage.HOME)
    assert main_page.HOME_MENU == header_home_menu
    header_service_menu = main_page.get_header_menu_text(BasePage.SERVICE)
    assert main_page.SERVICE_MENU == header_service_menu
    header_contact_form_menu = main_page.get_header_menu_text(BasePage.CONTACT_FORM)
    assert main_page.CONTACT_FORM_MENU == header_contact_form_menu
    header_metals_colors_menu = main_page.get_header_menu_text(BasePage.METALS_COLORS)
    assert main_page.METALS_COLORS_MENU == header_metals_colors_menu
    assert main_page.check_displaying_of_image(number=number_of_image)
