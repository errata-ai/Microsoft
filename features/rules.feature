Feature: Rules

  Scenario: Accessibility-related language
    When I test "Accessibility"
    Then the output should contain exactly:
      """
      test.md:3:110:Microsoft.Accessibility:Don’t use language ('able-bodied') that defines people by their disability.
      test.md:5:24:Microsoft.Accessibility:Don’t use language ('crippled') that defines people by their disability.
      """

  Scenario: Acronym definitions
    When I test "Acronyms"
    Then the output should contain exactly:
      """
      test.md:5:66:Microsoft.Acronyms:'DAFB' has no definition.
      """

  Scenario: Use of adverbs
    When I test "Adverbs"
    Then the output should contain exactly:
      """
      test.md:3:8:Microsoft.Adverbs:Consider removing 'very.'
      """

  Scenario: Use of AM and PM
    When I test "AMPM"
    Then the output should contain exactly:
      """
      test.md:3:14:Microsoft.AMPM:Use 'AM' or 'PM' (preceded by a space).
      """
