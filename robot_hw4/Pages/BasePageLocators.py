""" Base Page Locators """

# login
USER_ICON_BUTTON = "id:user-icon"
USER_NAME_TEXT_INPUT = "id:name"
USER_PASSWORD_TEXT_INPUT = "id:password"
SUBMIT_BUTTON = "id:login-button"
USER_NAME_TEXT = "id:user-name"

# header services drop-down menu
HEADER_SERVICES_DROP_DOWN_BUTTON = "css:ul.nav > li.dropdown > a"
# child items
HEADER_DROP_DOWN_SUPPORT_BUTTON = "//a[contains(text(),'Support')]"
HEADER_DROP_DOWN_DATES_BUTTON = "//a[contains(text(),'Dates')]"
HEADER_DROP_DOWN_COMPLEX_TABLE_BUTTON = "//a[contains(text(),'Complex Table')]"
HEADER_DROP_DOWN_SIMPLE_TABLE_BUTTON = "//a[contains(text(),'Simple Table')]"
HEADER_DROP_DOWN_TABLE_WITH_PAGES_BUTTON = "//a[contains(text(),'Table with pages')]"
HEADER_DROP_DOWN_DIFFERENT_ELEMENTS_BUTTON = "//a[contains(text(),'Different elements')]"

# left side services drop-down menu
LEFT_SERVICES_DROP_DOWN_BUTTON = "css:ul.sidebar-menu > li:nth-child(3) > a"
# child items
LEFT_DROP_DOWN_SUPPORT_BUTTON = "//span[text()='Support']"
LEFT_DROP_DOWN_DATES_BUTTON = "//span[text()='Dates']"
LEFT_DROP_DOWN_COMPLEX_TABLE_BUTTON = "//span[text()='Complex Table ']"
LEFT_DROP_DOWN_SIMPLE_TABLE_BUTTON = "//span[text()='Simple Table']"
LEFT_DROP_DOWN_TABLE_WITH_PAGES_BUTTON = "//span[text()='Table with pages']"
LEFT_DROP_DOWN_DIFFERENT_ELEMENTS_BUTTON = "//span[text()='Different elements']"

# assert log for Dates Page and Different Elements Page
FIRST_ROW_OF_LOG = "css:ul.panel-body-list li:nth-child(1)"
SECOND_ROW_OF_LOG = "css:ul.panel-body-list li:nth-child(2)"
