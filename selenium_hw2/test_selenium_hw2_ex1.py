from selenium import webdriver
from selenium.webdriver.common.by import By
import pytest
import allure

url = "https://epam.github.io/JDI/index.html"


@pytest.fixture(scope='function')
def browser():
    browser = webdriver.Chrome()
    browser.maximize_window()
    yield browser
    browser.quit()


@pytest.mark.hw2_ex1
class TestHW2(object):
    FIRST_TEXT = "To include good practices\nand ideas from successful\nEPAM project"
    SECOND_TEXT = "To be flexible and\ncustomizable"
    THIRD_TEXT = "To be multiplatform"
    FORTH_TEXT = "Already have good base\n(about 20 internal and\nsome external projects),\nwish to get more…"

    # run in this directory by pytest -n4

    @allure.testcase("parametrize")
    @pytest.mark.parametrize("assert_data, locator", ([FIRST_TEXT,
                                                       "div.benefits div.col-sm-3:nth-child(1) span.benefit-txt"],
                                                      [SECOND_TEXT,
                                                       "div.benefits div.col-sm-3:nth-child(2) span.benefit-txt"],
                                                      [THIRD_TEXT,
                                                       "div.benefits div.col-sm-3:nth-child(3) span.benefit-txt"],
                                                      [FORTH_TEXT,
                                                       "div.benefits div.col-sm-3:nth-child(4) span.benefit-txt"]),
                             ids=["first text", "second text", "third text", "forth text"])
    def test_asserting_of_text_under_images1(self, browser, assert_data, locator):
        browser.get(url)
        assert browser.find_element(By.CSS_SELECTOR,
                                    locator).text == assert_data





