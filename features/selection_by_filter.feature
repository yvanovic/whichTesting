Feature: Find the best TV deals in UK

  In order to make a right decision before I buy a Television
  As a customer
  I want to filter the list of offered Televisions by price , size, features and types

  Scenario Outline: Filter by screen size
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can choose the screen size between '<screen_size>'
    Then  I see right selection by <size>
    And   I clear all the screen size selection
    Then  I wait for 10 seconds to see my choice
    Examples:
      | screen_size |
      | 17-26"      |
      | 27-39"      |
      | 40-46"      |
      | 47-55"      |
      | 56"+        |

  Scenario Outline: Filter by Brand
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I filter by the <brand>
    Then  I see right selection by <brand>
    And   I clear all the screen size selection
    Then  I wait for 10 seconds to see my choice
    Examples:
      | brand     |
      | Samsung   |
      | LG        |
      | Sony      |
      | Panasonic |
      | Philips   |

  Scenario Outline: Filter by Type
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When   I filter by the <type>
    Then  I see right selection by <type>
    And   I clear all the screen size selection
    Then  I wait for 10 seconds to see my choice
    Examples:
      | type        |
      | Curved LCD  |
      | Plasma      |
      | LED         |
      | 4k ultra HD |
      | HD Ready    |


  Scenario Outline: Filter Features
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I filter by the <feature>
    Then  I see right selection by <Features>
    And   I clear all the screen size selection
    Then  I wait for 10 seconds to see my choice
    Examples:
      | feature     |
      | Smart TV    |
      | WiFi        |
      | 3D          |
      | Freeview HD |
      | PVR         |

  Scenario Outline: Filter Retailers
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When   I filter by the <retailer>
    Then  I see right selection by <retailer>
    And   I clear all the screen size selection
    Examples:
      | retailer              |
      | Amazon.co.uk          |
      | Tesco Direct          |
      | John Lewis            |
      | Argos                 |
      | Currys                |
      | Richer Sounds(Stores) |

  Scenario Outline: Filter by Brands and Screen Size
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can filter by the <brand> and <size>
    Then  I wait for 5 seconds to see my choice
    And   I clear all the screen size selection
    Examples:
      | brand     | size   |
      | Samsung   | 17-26" |
      | LG        | 40-46" |
      | Sony      | 47-55" |
      | Panasonic | 56"+   |
      | Philips   | 27-39" |
