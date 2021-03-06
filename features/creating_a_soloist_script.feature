Feature: Creating a soloist script
  As a non-logged-in visitor
  I would like to create a soloist script
  So that I can use soloist on my computer

  Background:
    Given some recipes have been created

  Scenario: Creating a soloist script with the defaults from the homepage
    Given I am on the homepage
    And I press create
    Then a soloist script should be created with some recipes
    And I should be located on the show page for my soloist script
    And I should see a message saying my soloist script has been created

  Scenario: Creating a soloist script with the defaults from the new soloist script page
    Given I am on the new soloist script page
    And I press create
    Then a soloist script should be created with some recipes
    And I should be located on the show page for my soloist script
    And I should see a message saying my soloist script has been created

  Scenario: Trying to create a soloist script with no recipes
    Given I am on the new soloist script page
    And I uncheck all of the recipes
    And I press create
    Then an error message should appear telling me I need to choose some recipes

  Scenario: Creating a soloist script with 1 recipe
    Given I am on the new soloist script page
    And I uncheck all of the recipes
    And I check one recipe
    And I press create
    Then a soloist script should be created with one recipe
    And I should see a message saying my soloist script has been created
