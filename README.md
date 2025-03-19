# Robot Framework Setup Guide

This guide will help you set up the necessary environment to run Robot Framework tests for the Lion Parcel mobile application.

## Prerequisites

### Install Python 3
First, make sure you have Python 3 installed on your machine. You can download Python 3 from the official website:
[Download Python 3](https://www.python.org/downloads/)

### Verify Python Installation
After installing Python, verify the installation by running the following command in your terminal or command prompt:

```bash
python --version
```

### Verify pip Installation
pip is the Python package manager, and it should be installed with Python by default. To check if pip is installed, run:
```bash
pip3 --version
```

### Step 1: Install Dependencies
Clone or download the project repository to your local machine:  
git clone https://github.com/fadlioo/rf-lionparcel.git
Navigate to the project folder using the terminal or command prompt.  
Install the required dependencies by running the following commands:
```bash  
pip install robotframework
pip install robotframework-appiumlibrary
pip install robotframework-seleniumlibrary
```

### Step 2: Configure Environment
Ensure Appium Server is running at: http://127.0.0.1:4723
Make sure you have the Lion Parcel app installed on your Android device
Connect your Android device (UDID: RRCW200SSSM) or update the configuration in resources/mobile/config.robot

### Step 3: Run the Tests
Once the dependencies are installed, you can run the Robot Framework tests by executing the following command:
```bash  
robot tests/
```

### Step 4: View the Test Results
After running the tests, Robot Framework will generate three important output files:  
log.html - A detailed log of the test execution
report.html - A summary report of the test execution
output.xml - A machine-readable XML output file
You can open the log.html and report.html files in a web browser to view the test results.

### Project Structure

rf-lionparcel/
├── resources/
│   ├── mobile/
│   │   ├── config.robot         # Mobile configuration
│   │   └── pages/
│   │       └── login_page.robot # Login page object
│   └── web/
│       └── complete_page.robot  # Web page object
└── tests/
    └── test.py                  # Test utilities

### Configuration Details
The mobile testing is configured for:
Platform: Android 13
Device: Android Device (UDID: RRCW200SSSM)
Appium Server: http://127.0.0.1:4723
App Package: com.lionparcel.services.consumer
App Activity: com.lionparcel.services.consumer.view.onboarding.OnBoardingActivity

### Contributors
fadlioo
