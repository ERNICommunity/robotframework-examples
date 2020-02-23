# Robot Framework Demos

This is a collection of different examples of the robot framework.

Every example comes with a readme with further information. Please have a look at it before running the tests.

## Setup

This needs python > 3.6 already installed and available in your `PATH`.

Some examples need additional things to be running. Please check the readme in the examples folder.


### Virtual environment

It is recommended to create a new virtual environment with

```
python -m venv venv
```

and activate it with

```
. ./venv/bin/activate
```

or on windows

```
.\venv\Scripts\activate
```

### Install requirements

Run the following command to install robot framework and all requirements for the examples:

```
pip install -r requirements.txt
```

### Selenium webdriver

For test using selenium an additional webdriver is needed.

On Linux the webdriver can be installed by running

```
webdrivermanager chrome --linkpath /usr/local/bin
```

## Run test

To run a test use 

```
robot test.robot
```

It will create a `report.html`, `log.html` and `output.xml` in the current folder.
Open one of the `log.html` in the browser to see a detailed log of the test steps.

Some tests accept additional variables. Pass them like this
```
robot --variable KEY:VALUE test.robot
```