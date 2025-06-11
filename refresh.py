from selenium import webdriver
import time

driver = webdriver.Safari() # or .Firefox() .Chrome()
driver.get("https://antismash-app.streamlit.app/")
time.sleep(2)
driver.quit()