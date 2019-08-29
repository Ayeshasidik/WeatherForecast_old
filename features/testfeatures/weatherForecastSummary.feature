Feature: Weather Forecast Application

  Scenario Outline: 5 day weather forecast

    Given A user opens a browser and logins to weather forecast Application

    When A user enters the city name as "<cityName>" in city textbox
    Then Weather Forecast page for the user selected city will be displayed

    When A user selects a "<day>"
    Then Weather Forecast page for the user selected day will be displayed on hourly

    When User summarizes the Most dominant condition with wind speed and direction
    Then User verifies the wind speed and direction from detailed section

    When User summarizes the Maximum temperatures
    Then User verifies the day header values with hourly updates

    When User summarizes the Minimum temperatures
    Then User verifies the day header values with hourly updates for minimum temperature

    When User summarizes the Aggregate rainfall in Summary
    Then User verifies the aggregate rainfall

    And User verifies that all values are rounded down

    When A user selects a "<day>" again
    Then User should not be able to see the hourly weather forecast as it is collapsed

    Examples:
      | cityName | day |
      | Perth    | Thu |


