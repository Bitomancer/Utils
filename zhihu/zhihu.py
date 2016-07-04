from selenium import webdriver
import random

JQUERY_FILE = 'jquery-3.0.0.min.js'
PROXY = "socks5://127.0.0.1:8090"

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--proxy-server=%s' % PROXY)

chrome = webdriver.Chrome(chrome_options=chrome_options)
chrome.get("https://www.zhihu.com")

# inject jquery
jquery_str = ''
with open(JQUERY_FILE, 'r') as f:
    jquery_str = f.read()
chrome.execute_script(jquery_str)

captcha = raw_input('captcha:')
name_str = "$('.view-signup input[name=\"fullname\"]').val('asdasdasd1was%s')" % random.randrange(10000)
email_str = "$('.view-signup input[name=\"account\"]').val('asdasdasd1was%s@qq.com')" % random.randrange(10000)
password_str = "$('.view-signup input[name=\"password\"]').val('111111')"
captcha_str = "$('.view-signup input[name=\"captcha\"]').val('%s')" % captcha
submit_str = "$('.view-signup .sign-button.submit').click()"
chrome.execute_script(name_str)
chrome.execute_script(email_str)
chrome.execute_script(password_str)
chrome.execute_script(captcha_str)
chrome.execute_script(submit_str)
