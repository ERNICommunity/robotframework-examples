# Frontend login

This is a demo taken from: https://github.com/robotframework/WebDemo#demo-application

This tests a sample webapplication with a login.
The tests open the webpage and enter valid and invalid logins.

## Setup

### Selenium webdriver

This needs a webdriver installed.
Use `--variable BROWSER:Chrome` for different browser.

### Server

This needs a server running. Start the server with

```
python webdemo/demoapp/server.py
```

## Tests

In `webdemo/login_tests` are three different test suites.
One with valid and one with invalid logins. And an additonal one written in gherkin syntax.


## Why?

This is an example of interacting with a webpage using selenium and robot.