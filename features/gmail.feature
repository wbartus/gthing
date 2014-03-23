Feature: Google Site
	As a good training
	I will automate some basic funcionalities
	On Google page

	Scenario: Logging to Gmail
		Given I am on Gmail page
		And I am not logged
		When I log to my account
		Then I should be redirected to Inbox