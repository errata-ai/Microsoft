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

  Scenario: Use of AM and PM
    When I test "AMPM"
    Then the output should contain exactly:
      """
      test.md:3:14:Microsoft.AMPM:Use 'AM' or 'PM' (preceded by a space).
      test.md:5:18:Microsoft.AMPM:Use 'AM' or 'PM' (preceded by a space).
      """

  Scenario: Use of auto-*
    When I test "Auto"
    Then the output should contain exactly:
      """
      test.md:3:14:Microsoft.Auto:In general, don’t hyphenate 'auto-scale'.
      """

  Scenario: Usage of terms
    When I test "Terms"
    Then the output should contain exactly:
      """
      test.md:3:25:Microsoft.Avoid:Don't use 'abortion'.
      test.md:5:9:Microsoft.Avoid:Don't use 'and/or'.
      test.md:5:34:Microsoft.ComplexWords:Consider using 'plenty' instead of 'abundance'
      test.md:7:8:Microsoft.Adverbs:Consider removing 'very'.
      test.md:9:1:Microsoft.FirstPerson:Use first person sparingly ('I').
      test.md:9:27:Microsoft.Wordiness:Consider using "enough" instead of "adequate number".
      test.md:11:9:Microsoft.Vocab:Verify your use of 'ensure'.
      """

  Scenario: Backend vs. Back-end
    When I test "Backend"
    Then the output should contain exactly:
      """
      test.md:3:7:Microsoft.Backend:Use 'back end' or 'back-end' instead of 'backend'
      test.md:5:7:Microsoft.Backend:Use 'back-end' instead of 'back end'
      test.md:11:20:Microsoft.Backend:Use 'back end' instead of 'back-end'
      """

  Scenario: Use of contractions
    When I test "Contractions"
    Then the output should contain exactly:
      """
      test.md:3:1:Microsoft.Contractions:Use \"it's\" instead of \"It is\".
      """

  Scenario: Use of dashes
    When I test "Dashes"
    Then the output should contain exactly:
      """
      test.md:3:42:Microsoft.Dashes:Remove the spaces around '—'.
      """

  Scenario: Date Formatting
    When I test "DateFormat"
    Then the output should contain exactly:
      """
      test.md:3:6:Microsoft.DateFormat:Use 'July 31, 2016' format, not '12 Mar 2016'.
      """

  Scenario: Use of punctuation
    When I test "Punctuation"
    Then the output should contain exactly:
      """
      test.md:3:10:Microsoft.Ellipses:In general, don’t use an ellipsis.
      test.md:5:13:Microsoft.Hyphens:'officially-' doesn't need a hyphen.
      test.md:7:1:Microsoft.OxfordComma:Use the Oxford comma in 'I like red, blue, green and'.
      test.md:11:10:Microsoft.Quotes:Punctuation should be inside the quotes.
      test.md:15:19:Microsoft.Semicolon:Try to simplify this sentence.
      test.md:22:25:Microsoft.Quotes:Punctuation should be inside the quotes.
      test.md:24:49:Microsoft.Suspended:Don't use 'left- and right-' unless space is limited.
      """

  Scenario: Foreign words
    When I test "Foreign"
    Then the output should contain exactly:
      """
      test.md:3:31:Microsoft.Foreign:Use \"that is\" instead of \"i.e.,\".
      """

  Scenario: Heading styles
    When I test "Headings"
    Then the output should contain exactly:
      """
      test.md:1:7:Microsoft.HeaderColons:Capitalize ': m'."
      test.md:5:3:Microsoft.Headers:'This is a Heading' should use sentence-style capitalization.
      test.md:7:11:Microsoft.HeaderPunctuation:Don’t use punctuation in headings.
      """

  Scenario: Passive voice
    When I test "Passive"
    Then the output should contain exactly:
      """
      test.md:3:6:Microsoft.Passive:'was broken' looks like passive voice.
      """

  Scenario: Sentences
    When I test "Sentences"
    Then the output should contain exactly:
      """
      test.md:5:22:Microsoft.Spacing:'. T' should have one space.
      """
