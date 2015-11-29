Feature: Find the best TV deals in UK

  In order to make a right decision before I buy a Television
  As a customer
  I want to compare a set of selected Televisions once filtered


  Scenario Outline: Filter by min and max price then compare
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can filter by price between <min_price> and <max_price>
    Then  The right selection is shown
    When  I click compare under the first selection
    Then  the compare banner is shown below the page with the selected tv model
    When  I click compare under the second selection
    Then  the second selected tv model is added on compare banner
    Examples:
      | min_price | max_price |
      | 600       | 1000      |
      | 2000      | 3000      |

  Scenario Outline: Filter by min and max price then compare
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can filter by price between <min_price> and <max_price>
    Then  The right selection is shown
    When  I click compare under the first selection
    Then  the compare banner is shown below the page with the selected tv model
    When  I click compare under the second selection
    Then  the second selected tv model is added on compare banner
    When  I click compare under the third selection
    Then  the third selected tv model is added on compare banner
    When  I click compare under the four selection
    Then  the four selected tv model is added on compare banner
    When  I click compare under the fifth selection
    Then  the fifth selected tv model is not added on compare banner
    And   I can see message 'You already have 4 products for comparison'
    Examples:
      | min_price | max_price |
      | 600       | 1000      |
      | 2000      | 3000      |

  @selenium
  Scenario Outline: Filter by min and max price then compare
    Given I am on the Which television review page
    And   I can see the 'All Televisions' tab
    When  I can filter by price between <min_price> and <max_price>
    Then  The right selection is shown
    When  I click compare under the first selection
    And   I can see remove from compare under the selected tv model
    Then  the compare banner is shown below the page with the selected tv model
    When  I click compare under the second selection
    Then  the second selected tv model is added on compare banner
    When  I click on remove from compare
    Examples:
      | min_price | max_price |
      | 600       | 1000      |
      | 2000      | 3000      |