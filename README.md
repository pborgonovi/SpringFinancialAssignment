# Contact Us Form: Automation Project

This automation project is developed as part of the recruitment process for the QA Analyst position at Spring Financial. The project aims to automate the testing of a Contact Us form.

# Table of Contents

1. [Introduction](#introduction)
2. [Business Rules](#business-rules)
3. [Installation](#installation)
5. [Usage](#usage)

# Introduction

The Contact Us form allows users to submit inquiries or feedback. This automation project ensures that the form functions correctly according to the specified business rules.

# Business Rules

The following business rules are applied to the Contact Us form:
- First Name, Last Name, Email, and Comments fields are mandatory;  
- First Name and Last Name must contain between 2 and 25 characters;  
- Email address must adhere to international validation rules.

# Project Structure 

- test_scenarios.feature: Contains all the test scenarios written in Gherkin syntax.  
- StepDefinitions.java: Implements the steps defined in the feature files using Selenium WebDriver and Java.  
- Runner.java: Runs the Cucumber scenarios specified in the feature files.

# Installation

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/pborgonovi/SpringFinancialAssignment.git
    ```

2. Install the necessary dependencies, including Selenium WebDriver and Cucumber.

3. Configure the project settings, such as browser configurations and test environment URLs.

# Usage:

1. Ensure the project dependencies are installed and configured correctly.
2. Execute the Runner.java file to run the test scenarios.
3. Review the test results to ensure the Contact Us form functions as expected.
