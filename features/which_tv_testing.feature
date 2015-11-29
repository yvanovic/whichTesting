Feature: Find the best TV deals in UK

  In order to make a right decision before I buy a Television
  As a customer
  I want to navigate to different tab like Best buys, Advice Guides.
  Also filter the list of offered Televisions by price , size, features and types

  Scenario: Compare televisions
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    Then  I wait for 10 seconds to see my choice


  Scenario: Navigate to the Best Buys tab
    Given I am on the Which television review page
    And   I can see the 'Best Buys' tab
    When  I click on 'Best Buys' tab
    Then  The Best Buys page is loaded


  Scenario: Navigate to the Advice Guides tab
    Given I am on the Which television review page
    And   I can see the 'Advice Guides' tab
    When  I click on 'Advice Guides' tab
    Then  The Advice Guides page is loaded


  Scenario: Sort the televisions by Price low to high

    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    And   I sort by 'Price low to high'
    Then  I wait for 5 seconds to see my choice


  Scenario: Sort the televisions by Price low to high

    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    And   I sort by 'Screen size high to low'
    When  I can choose the screen size between '40-46"'
    Then  I wait for 15 seconds to see my choice

  Scenario Outline: Filter by Brands and Screen Size
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can filter by the <brand> and <size>
    Then  I wait for 10 seconds to see my choice
    And   I clear all the screen size selection
    Examples:
      | brand     | size   |
      | Samsung   | 17-26" |
      | LG        | 40-46" |
      | Sony      | 47-55" |
      | Panasonic | 56"+   |
      | Philips   | 27-39" |
