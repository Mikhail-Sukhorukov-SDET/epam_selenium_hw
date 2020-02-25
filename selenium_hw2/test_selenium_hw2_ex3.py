from selenium import webdriver
import pytest

url = "https://epam.github.io/JDI/index.html"


@pytest.fixture(scope='function')
def browser():
    browser = webdriver.Chrome()
    browser.maximize_window()
    yield browser
    browser.quit()


def test_ex3(browser):
    browser.get(url)
    # Assert Browser title
    assert browser.title == "Home Page"

    # Perform login
    browser.find_element_by_id("user-icon").click()
    browser.find_element_by_id("name").send_keys("epam")
    browser.find_element_by_id("password").send_keys("1234")
    browser.find_element_by_id("login-button").click()

