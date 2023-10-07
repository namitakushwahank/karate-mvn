Feature: Validate GET all bookings endpoint

  Scenario: GET all bookings
    Given url 'https://restful-booker.herokuapp.com'
    When path '/booking'
    And method GET
    Then status 200