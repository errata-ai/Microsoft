Feature: Rules

  Scenario: Accessibility-related language
    When I test "Accessibility"
    Then the output should contain exactly:
      """
      test.md:3:110:Microsoft.Accessibility:Don't use language (such as 'able-bodied') that defines people by their disability.
      test.md:5:24:Microsoft.Accessibility:Don't use language (such as 'crippled') that defines people by their disability.
      """

  Scenario: Acronym definitions
    When I test "Acronyms"
    Then the output should contain exactly:
      """
      test.md:5:66:Microsoft.Acronyms:'DAFB' has no definition.
      """

  Scenario: Use of 'he/she' and the like
    When I test "Gender"
    Then the output should contain exactly:
      """
      test.md:3:6:Microsoft.Gender:Don't use 'he/she'.
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
      test.md:3:14:Microsoft.Auto:In general, don't hyphenate 'auto-scale'.
      """

  Scenario: Usage of terms
    When I test "Terms"
    Then the output should contain exactly:
      """
      test.md:3:25:Microsoft.Avoid:Don't use 'abortion'.
      test.md:5:9:Microsoft.Avoid:Don't use 'and/or'.
      test.md:5:34:Microsoft.ComplexWords:Consider using 'plenty' instead of 'abundance'.
      test.md:7:8:Microsoft.Adverbs:Consider removing 'very'.
      test.md:9:1:Microsoft.FirstPerson:Use first person (such as 'I ') sparingly.
      test.md:9:27:Microsoft.Wordiness:Consider using 'enough' instead of 'an adequate number of'.
      test.md:11:9:Microsoft.Vocab:Verify your use of 'ensure' with the A-Z word list.
      test.md:17:1:Microsoft.FirstPerson:Use first person (such as 'I ') sparingly.
      test.md:19:13:Microsoft.FirstPerson:Use first person (such as 'me') sparingly.
      test.md:21:1:Microsoft.FirstPerson:Use first person (such as 'I'm') sparingly.
      test.md:23:1:Microsoft.We:Try to avoid using first-person plural like 'We'.
      test.md:25:9:Microsoft.FirstPerson:Use first person (such as 'my') sparingly.
      test.md:27:14:Microsoft.FirstPerson:Use first person (such as 'mine') sparingly.
      test.md:29:17:Microsoft.We:Try to avoid using first-person plural like 'us'.
      test.md:31:1:Microsoft.We:Try to avoid using first-person plural like 'Let's'.
      test.md:33:1:Microsoft.FirstPerson:Use first person (such as 'I, ') sparingly.
      test.md:33:21:Microsoft.We:Try to avoid using first-person plural like 'our'.
      test.md:35:1:Microsoft.We:Try to avoid using first-person plural like 'We'.
      test.md:35:8:Microsoft.ComplexWords:Consider using 'carry out or do' instead of 'accomplish'.
      """

  Scenario: Backend vs. Back-end
    When I test "Backend"
    Then the output should contain exactly:
      """
      test.md:3:7:Microsoft.Backend:Use 'back-end' instead of 'back end'.
      test.md:9:20:Microsoft.Backend:Use 'back end' instead of 'back-end'.
      test.md:11:5:Microsoft.Backend:Use 'back-end' instead of 'back end'.
      test.md:13:5:Microsoft.Backend:Use 'back end' instead of 'back-end'.
      test.md:15:24:Microsoft.Backend:Use 'back-end' instead of 'back end'.
      test.md:15:50:Microsoft.Backend:Use 'back-end' instead of 'back end'.
      test.md:19:17:Microsoft.Backend:Use 'back-end' instead of 'back end'.
      """

  Scenario: Use of contractions
    When I test "Contractions"
    Then the output should contain exactly:
      """
      test.md:3:1:Microsoft.Contractions:Use 'it's' instead of 'It is'.
      """

  Scenario: Use of dashes
    When I test "Dashes"
    Then the output should contain exactly:
      """
      test.md:3:42:Microsoft.Dashes:Remove the spaces around ' — '.
      """

  Scenario: Use of units
    When I test "Units"
    Then the output should contain exactly:
      """
      test.md:5:17:Microsoft.Units:Don't spell out the number in 'five pounds'.
      test.md:7:8:Microsoft.Units:Don't spell out the number in 'six meters'.
      test.md:11:8:Microsoft.Units:Don't spell out the number in 'ten cm'.
      """

  Scenario: URL grammar
    When I test "URL"
    Then the output should contain exactly:
      """
      test.md:1:11:Microsoft.URLFormat:Use 'URL of' instead of 'URL for'.
      test.md:3:8:Microsoft.URLFormat:Use 'a URL' instead of 'an URL'.
      """

  Scenario: Use of numbers
    When I test "Numbers"
    Then the output should contain exactly:
      """
      test.md:1:15:Microsoft.Ranges:In most cases, use 'from' or 'through' to describe a range of numbers.
      test.md:4:48:Microsoft.RangeTime:Use 'to' instead of a dash in 'AM - 2:00 PM'.
      """

  Scenario: Date Formatting
    When I test "DateFormat"
    Then the output should contain exactly:
      """
      test.md:3:6:Microsoft.DateFormat:Use 'July 31, 2016' format, not '12 Mar 2016'.
      test.md:5:16:Microsoft.DateNumbers:Don't use ordinal numbers for dates.
      test.md:7:14:Microsoft.DateOrder:Always spell out the name of the month.
      test.md:13:7:Microsoft.DateNumbers:Don't use ordinal numbers for dates.
      """

  Scenario: Use of punctuation
    When I test "Punctuation"
    Then the output should contain exactly:
      """
      test.md:3:10:Microsoft.Ellipses:In general, don't use an ellipsis.
      test.md:5:13:Microsoft.Hyphens:' officially-' doesn't need a hyphen.
      test.md:7:13:Microsoft.OxfordComma:Use the Oxford comma in 'blue, green and orange.'.
      test.md:11:10:Microsoft.Quotes:Punctuation should be inside the quotes.
      test.md:15:19:Microsoft.Semicolon:Try to simplify this sentence.
      test.md:22:25:Microsoft.Quotes:Punctuation should be inside the quotes.
      test.md:24:49:Microsoft.Suspended:Don't use 'left- and right-' unless space is limited.
      """

  Scenario: Foreign words
    When I test "Foreign"
    Then the output should contain exactly:
      """
      test.md:3:31:Microsoft.Foreign:Use 'that is' instead of 'i.e.,'.
      """

  Scenario: Heading styles
    When I test "Headings"
    Then the output should contain exactly:
      """
      test.md:1:7:Microsoft.HeadingColons:Capitalize ': m'.
      test.md:5:3:Microsoft.Headings:'This is a Heading' should use sentence-style capitalization.
      test.md:7:13:Microsoft.HeadingPunctuation:Don't use end punctuation in headings.
      test.md:9:15:Microsoft.HeadingAcronyms:Avoid using acronyms in a title or heading.
      test.md:15:3:Microsoft.Headings:'8. Do step eight' should use sentence-style capitalization.
      """

  Scenario: Passive voice
    When I test "Passive"
    Then the output should contain exactly:
      """
      test.md:3:6:Microsoft.Passive:'was broken' looks like passive voice.
      test.md:5:6:Microsoft.Passive:'are related' looks like passive voice.
      """

  Scenario: Sentences
    When I test "Sentences"
    Then the output should contain exactly:
      """
      test.md:5:21:Microsoft.Spacing:'y. T' should have one space.
      """
