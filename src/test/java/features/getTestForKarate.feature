Feature: Validate GET all bookings endpoint

  Background:
    * configure ssl = true
    * def config = call read('file:src/test/java/karate-config.js')
    * def baseUrl = config.baseURL

@smoke
  Scenario: GET all bookings
    Given url baseUrl
    And header x-api-key = "reqres-free-v1"
    When path '/booking'
    And method GET
    Then status 200
    #And print response[0].bookingid
    #And def jsonResponse = karate.jsonPath(response, '$')
    And match each response[*].bookingid == '#? _ >= 0 && _ % 1 == 0'
