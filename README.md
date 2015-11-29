# whichTesting
Website testing with Ruby, Cucumber and Capybara

This is a small automation testing framework used to test a which? website specifically the television review pages.
There are a set of functional test cases that were implemented.

This web-base automation project use the following automation tools:

     1. Cucumber
     2. Capybara
     3. Selenium
 
Once you clone this repo, to make sure that it works nice, you will have to
 
    1. Download the chromedriver and move into your PATH, 'https://code.google.com/p/selenium/wiki/ChromeDriver'
    2. run bundle install via the terminal within the project dir to install all the gems and their dependencies 
 
Only the scenarios in the which_tv_testing.feature are been implemented and work fine. The other scenarios are not implemented, but will be eventually 
 
    1. to run the scenarios implemented ("which_tv_testing.feature"), via the terminal type: 
    'cucumber features/which_tv_testing'
    
 This will run all the scenarios in that feature file.
 
