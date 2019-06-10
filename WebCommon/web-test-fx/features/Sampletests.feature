Feature: Run tests on the code
  Background:
    Given I launch the website
  @run
  Scenario: Verify the codes (CLEARTRIP)
    Then I print the url
    When element with identifier "SearchBtn" is asserted
    Then element with identifier "SearchBtn" is clicked
    And wait for element with identifier "homeErrorMessage" to be present
    And wait for element with text "Sorry, but we can't continue until you fix everything that's marked in RED" to be present
    Then element with text "Round trip" is clicked
    And I wait for the page to load
    And I click element with text "Local" is opened in new tab
    Then I wait for the page to load
    Then I switch to next tab
    And I wait for the page to load
    And I wait for the page to load
    And I wait for the page to load
    Then I assert to text "Featured"
    And I switch to previous tab
    Then element with text "Search flights" is asserted
    And I wait for the page to load
    And website with url "www.amazon.com" is launched
    Then I wait for the page to load
    Then I click element with text "Today's Deals" is opened in new window
    Then I wait for the page to load
    And text "Mobile" is entered in the identifier "twotabsearchtextbox"
    When I wait for the page to load


#  Scenario: Verify the codes (WATANI)
#    Then I wait for the page to load
#    When wait for element with text "Home" to be present
#    And wait for element with text "About Us" to be present
#    Then wait for element with text "Contact Us" to be present
#    And wait for element with text "En" to be present
#    Then wait for element with text "LOGIN" to be present
#    And element with text "LOGIN" is clicked
#    Then I wait for the page to load
#    And text "789789789" is entered in the identifier "phoneNumber"
#    Then element with identifier "captcha" is clicked
#    Then I wait for the page to load
#
#
#  Scenario: Verify the codes (LECET)
#    And wait for element with text "EMAIL ADDRESS" to be present
#    Then wait for element with text "PASSWORD" to be present
#    Then I wait for the page to load
#    Then text "raina.malik@ymedialabs.com" is entered using class attribute "input-email"
#    When text "ymedia1" is entered using class attribute "input-password"
#    Then wait for element with text "REMEMBER ME" to be present
#    Then element with text "LOG IN" is clicked
#    And I wait for the page to load
#    And wait for element with text "Complete your profile to get started" to be present
#    Then wait for element with text "CONFIRM YOUR FIRST NAME" to be present
#    And wait for element with text "CONFIRM YOUR LAST NAME" to be present
#    When wait for element with text "CONFIRM YOUR EMAIL ADDRESS" to be present
#    Then wait for element with text "PHONE NUMBER" to be present












