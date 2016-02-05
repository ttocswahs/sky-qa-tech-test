@division
Feature: Division

@example
Scenario: Divide two numbers together
    Given I enter "10" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "5"

@example
Scenario: Divide three numbers together
    Given I enter "50" into the calculator
    And I hit "divide"
    And I enter "5" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "5"

@example
Scenario: Divide two numbers and add another
    Given I enter "100" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "52"

@example
Scenario: Divide two numbers and subtract another
    Given I enter "100" into the calculator
    And I hit "divide"
    And I enter "10" into the calculator
    And I hit "subtract"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "8"
	
@example
Scenario: Divide two numbers using 0
    Given I enter "5" into the calculator
    And I hit "divide"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "0"

@example
Scenario: Divide two numbers add 0
    Given I enter "5" into the calculator
    And I hit "divide"
    And I enter "1" into the calculator
    And I hit "add"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "5"
	
@example
Scenario: Divide two numbers subtract 0
    Given I enter "20" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "subtract"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "10"		
	
@example
Scenario: Divide two numbers together using negative number
    Given I enter "5" into the calculator
    And I hit "divide"
    And I enter "-1" into the calculator
    And I hit "equals"
    Then I see a result of "-5"
	
