from selenium import webdriver
import time
from selenium.webdriver.common.by import By
import selenium.common.exceptions as selexcept

# to run press CTRL+SHIFT+F10 in PyCharm or run in command line: python selenium_hw1.py in derictory of file


# Open test site by URL
browser = webdriver.Chrome()
browser.maximize_window()
browser.get("https://epam.github.io/JDI/")
# wait until browser displayed
time.sleep(10)

# Assert Browser title
assert browser.title == "Home Page"

# Perform login
browser.find_element_by_id("user-icon").click()
browser.find_element_by_id("name").send_keys("epam")
browser.find_element_by_id("password").send_keys("1234")
browser.find_element_by_id("login-button").click()

# Assert User name in the left-top side of screen that user is loggined
user_name = browser.find_element_by_id("user-name")
assert user_name.text == "PITER CHAILOVSKII"

# Assert Browser title
assert browser.title == "Home Page"

# Assert that there are 4 items on the header section are displayed and they have proper texts
home = browser.find_element_by_css_selector(
    'nav[role="navigation"] ul.nav > li:nth-child(1) a')
assert home.text == "HOME"
contact_form = browser.find_element_by_css_selector(
    'nav[role="navigation"] ul.nav > li:nth-child(2) a')
assert contact_form.text == "CONTACT FORM"
service = browser.find_element_by_css_selector(
    'nav[role="navigation"] ul.nav > li.dropdown > a')
assert service.text == "SERVICE"
metals_and_colors = browser.find_element_by_css_selector('nav[role="navigation"] ul.nav > li:nth-child(4) a')
assert metals_and_colors.text == "METALS & COLORS"


# Assert that there are 4 images on the Index Page and they are displayed


def is_element_present(how, what):
    try:
        browser.find_element(how, what)
    except selexcept.NoSuchElementException:
        return False
    return True


assert is_element_present(By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(1) span.icons-benefit")
assert is_element_present(By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(2) span.icons-benefit")
assert is_element_present(By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(3) span.icons-benefit")
assert is_element_present(By.CSS_SELECTOR, "div.benefits div.col-sm-3:nth-child(4) span.icons-benefit")

# Assert that there are 4 texts on the Index Page under icons and they have proper text
FIRST_TEXT = "To include good practices\nand ideas from successful\nEPAM project"
SECOND_TEXT = "To be flexible and\ncustomizable"
THIRD_TEXT = "To be multiplatform"
FORTH_TEXT = "Already have good base\n(about 20 internal and\nsome external projects),\nwish to get more…"
assert browser.find_element(By.CSS_SELECTOR,
                            "div.benefits div.col-sm-3:nth-child(1) span.benefit-txt").text == FIRST_TEXT
assert browser.find_element(By.CSS_SELECTOR,
                            "div.benefits div.col-sm-3:nth-child(2) span.benefit-txt").text == SECOND_TEXT
assert browser.find_element(By.CSS_SELECTOR,
                            "div.benefits div.col-sm-3:nth-child(3) span.benefit-txt").text == THIRD_TEXT
assert browser.find_element(By.CSS_SELECTOR,
                            "div.benefits div.col-sm-3:nth-child(4) span.benefit-txt").text == FORTH_TEXT

# Assert a text of the main headers
main_title = browser.find_element_by_css_selector("h3.main-title")
assert "EPAM FRAMEWORK WISHES…" == main_title.text
body_text = browser.find_elements_by_css_selector("p[name='jdi-text']")
assert "LOREM IPSUM" in body_text[0].text

# Assert that there is the iframe in the center of page
assert is_element_present(By.ID, "iframe")

# Switch to the iframe and check that there is Epam logo in the left top conner of iframe
browser.switch_to.frame(browser.find_element_by_tag_name("iframe"))
assert is_element_present(By.ID, "epam_logo")

# Switch to original window back
browser.switch_to.default_content()

# Assert a text of the sub header
link = browser.find_element(By.CSS_SELECTOR, "a[ui='link']")
assert link.text == 'JDI GITHUB'

# Assert that JDI GITHUB is a link and has a proper URL
assert link.get_attribute("href") == "https://github.com/epam/JDI"

# Assert that there is Left Section
assert is_element_present(By.NAME, 'navigation-sidebar')

# Assert that there is Footer
assert is_element_present(By.CSS_SELECTOR, 'div.footer-content')

browser.quit()
