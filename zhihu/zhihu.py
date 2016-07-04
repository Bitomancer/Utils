from selenium import webdriver
import random

JQUERY_FILE = 'jquery-3.0.0.min.js'
PROXY = "socks5://127.0.0.1:8090"

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--proxy-server=%s' % PROXY)

chrome = webdriver.Chrome(chrome_options=chrome_options)
chrome.get("https://www.zhihu.com")
name_el = chrome.find_element_by_css_selector('.name.input-wrapper input')
email_el = chrome.find_element_by_css_selector('.email.input-wrapper input')
password_el = chrome.find_element_by_css_selector('input[name="password"]')
captcha_el = chrome.find_element_by_css_selector('input[name="captcha"]')
submit_el = chrome.find_element_by_css_selector('.sign-button.submit')
print name_el, email_el, password_el, captcha_el, submit_el,

jquery_str = ''
with open(JQUERY_FILE, 'r') as f:
    jquery_str = f.read()

print jquery_str

chrome.execute_script(jquery_str)
name_str = "$('.name.input-wrapper input').val('asdasdasd1was%s')" % random.randrange(10000)
chrome.execute_script()
