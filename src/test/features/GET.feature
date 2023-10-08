Feature: Validate GET all bookings endpoint

  Scenario: GET all bookings
    Given url 'https://restful-booker.herokuapp.com'
    When path '/booking'
    And method GET
    Then status 200
    #And print response[0].bookingid
    #And def jsonResponse = karate.jsonPath(response, '$')
    And match each response[*].bookingid == '#? _ >= 0 && _ % 1 == 0'

    Scenario: Validate Get booking by ID
      Given url 'https://restful-booker.herokuapp.com'
      When path '/booking/1'
      And method GET
      Then status 200