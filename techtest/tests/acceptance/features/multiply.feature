@multiplication
Feature: Multiplication

Scenario: Multiply two numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "equals"
    Then I see a result of "50"

Scenario: Multiply three numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "100"

Scenario: Multiply two numbers and add another
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "52"

Scenario: Multiply two numbers and subtract another
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "subtract"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "48"
	
Scenario: Multiply two numbers together using 0
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "0"

Scenario: Multiply two numbers add 0
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "1" into the calculator
    And I hit "add"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "5"
	
Scenario: Multiply two numbers subtract 0
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "1" into the calculator
    And I hit "subtract"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "5"	
	
Scenario: Multiply two numbers then divide by 0
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "1" into the calculator
    And I hit "divide"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "0"
	
Scenario: Multiply two numbers together using negative number
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "-1" into the calculator
    And I hit "equals"
    Then I see a result of "-5"
	
Scenario: Multiply no numbers and press equals
    Given I enter "0" into the calculator
	And I hit "multiply"
	And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "0"
	
Scenario: Multiply two large numbers together
    Given I enter "500000000" into the calculator
    And I hit "multiply"
    And I enter "25" into the calculator
    And I hit "equals"
    Then I see a result of "12500000000"
	
Scenario: Multiply two decimal numbers together
    Given I enter "45.34" into the calculator
    And I hit "multiply"
    And I enter "16.011" into the calculator
    And I hit "equals"
    Then I see a result of "725.93874"
	
