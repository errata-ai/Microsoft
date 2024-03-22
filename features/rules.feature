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
            test.md:5:5:Microsoft.GenderBias:Consider using 'camera operator(s)' instead of 'cameraman'.
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
            test.md:3:25:Microsoft.Avoid:Don't use 'abortion'. See the A-Z word list for details.
            test.md:5:9:Microsoft.Vocab:Verify your use of 'and/or' with the A-Z word list.
            test.md:7:8:Microsoft.Adverbs:Remove 'very' if it's not important to the meaning of the statement.
            test.md:9:1:Microsoft.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:9:27:Microsoft.Wordiness:Consider using 'enough' instead of 'an adequate number of'.
            test.md:11:9:Microsoft.Vocab:Verify your use of 'ensure' with the A-Z word list.
            test.md:17:1:Microsoft.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:19:13:Microsoft.FirstPerson:Use first person (such as 'me') sparingly.
            test.md:21:1:Microsoft.FirstPerson:Use first person (such as 'I'm') sparingly.
            test.md:23:1:Microsoft.We:Try to avoid using first-person plural like 'We'.
            test.md:25:9:Microsoft.FirstPerson:Use first person (such as 'my') sparingly.
            test.md:27:14:Microsoft.FirstPerson:Use first person (such as 'mine') sparingly.
            test.md:29:17:Microsoft.We:Try to avoid using first-person plural like 'us'.
            test.md:31:1:Microsoft.We:Try to avoid using first-person plural like 'Let's'.
            test.md:33:1:Microsoft.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:33:21:Microsoft.We:Try to avoid using first-person plural like 'our'.
            test.md:35:1:Microsoft.We:Try to avoid using first-person plural like 'We'.
            test.md:37:1:Microsoft.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:37:21:Microsoft.Wordiness:Consider using 'to' instead of 'as a means to'.
            """

    #  Scenario: Backend vs. Back-end
    #    When I test "Backend"
    #    Then the output should contain exactly:
    #      """
    #      test.md:3:7:Microsoft.Backend:Use 'back-end' instead of 'back end'.
    #      test.md:9:20:Microsoft.Backend:Use 'back end' instead of 'back-end'.
    #      test.md:11:5:Microsoft.Backend:Use 'back-end' instead of 'back end'.
    #      test.md:13:5:Microsoft.Backend:Use 'back end' instead of 'back-end'.
    #      test.md:15:24:Microsoft.Backend:Use 'back-end' instead of 'back end'.
    #      test.md:15:50:Microsoft.Backend:Use 'back-end' instead of 'back end'.
    #      test.md:19:17:Microsoft.Backend:Use 'back-end' instead of 'back end'.
    #      """

    Scenario: Use of contractions
        When I test "Contractions"
        Then the output should contain exactly:
            """
            test.md:15:1:Microsoft.Contractions:Use 'Aren't' instead of 'Are not'.
            test.md:17:1:Microsoft.Contractions:Use 'They're' instead of 'They are'.
            test.md:19:25:Microsoft.Contractions:Use 'aren't' instead of 'are not'.
            test.md:33:1:Microsoft.Contractions:Use 'Can't' instead of 'Cannot'.
            test.md:35:4:Microsoft.Contractions:Use 'can't' instead of 'cannot'.
            test.md:37:28:Microsoft.Contractions:Use 'can't' instead of 'cannot'.
            test.md:51:1:Microsoft.Contractions:Use 'Couldn't' instead of 'Could not'.
            test.md:53:4:Microsoft.Contractions:Use 'couldn't' instead of 'could not'.
            test.md:55:28:Microsoft.Contractions:Use 'couldn't' instead of 'could not'.
            test.md:69:1:Microsoft.Contractions:Use 'Didn't' instead of 'Did not'.
            test.md:71:4:Microsoft.Contractions:Use 'didn't' instead of 'did not'.
            test.md:73:19:Microsoft.Contractions:Use 'didn't' instead of 'did not'.
            test.md:87:1:Microsoft.Contractions:Use 'Don't' instead of 'Do not'.
            test.md:89:3:Microsoft.Contractions:Use 'don't' instead of 'do not'.
            test.md:91:8:Microsoft.Contractions:Use 'don't' instead of 'do not'.
            test.md:105:1:Microsoft.Contractions:Use 'Doesn't' instead of 'Does not'.
            test.md:107:6:Microsoft.Contractions:Use 'doesn't' instead of 'does not'.
            test.md:109:33:Microsoft.Contractions:Use 'doesn't' instead of 'does not'.
            test.md:123:1:Microsoft.Contractions:Use 'Hasn't' instead of 'Has not'.
            test.md:125:6:Microsoft.Contractions:Use 'hasn't' instead of 'has not'.
            test.md:127:32:Microsoft.Contractions:Use 'hasn't' instead of 'has not'.
            test.md:141:1:Microsoft.Contractions:Use 'Haven't' instead of 'Have not'.
            test.md:143:3:Microsoft.Contractions:Use 'haven't' instead of 'have not'.
            test.md:145:3:Microsoft.Contractions:Use 'haven't' instead of 'have not'.
            test.md:155:1:Microsoft.Contractions:Use 'How's' instead of 'How is'.
            test.md:169:1:Microsoft.Contractions:Use 'Isn't' instead of 'Is not'.
            test.md:171:1:Microsoft.Contractions:Use 'That's' instead of 'That is'.
            test.md:173:11:Microsoft.Contractions:Use 'isn't' instead of 'is not'.
            test.md:187:1:Microsoft.Contractions:Use 'It's' instead of 'It is'.
            test.md:189:9:Microsoft.Contractions:Use 'it's' instead of 'it is'.
            test.md:191:25:Microsoft.Contractions:Use 'it is' instead of 'it's'.
            test.md:205:1:Microsoft.Contractions:Use 'Shouldn't' instead of 'Should not'.
            test.md:207:5:Microsoft.Contractions:Use 'shouldn't' instead of 'should not'.
            test.md:209:18:Microsoft.Contractions:Use 'shouldn't' instead of 'should not'.
            test.md:223:1:Microsoft.Contractions:Use 'That's' instead of 'That is'.
            test.md:225:5:Microsoft.Contractions:Use 'that's' instead of 'that is'.
            test.md:227:40:Microsoft.Contractions:Use 'that is' instead of 'that's'.
            test.md:241:31:Microsoft.Contractions:Use 'they are' instead of 'they're'.
            test.md:243:31:Microsoft.Contractions:Use 'they're' instead of 'they are'.
            test.md:245:1:Microsoft.Contractions:Use 'They're' instead of 'They are'.
            test.md:259:1:Microsoft.Contractions:Use 'Wasn't' instead of 'Was not'.
            test.md:261:4:Microsoft.Contractions:Use 'wasn't' instead of 'was not'.
            test.md:263:4:Microsoft.Contractions:Use 'wasn't' instead of 'was not'.
            test.md:277:1:Microsoft.Contractions:Use 'We're' instead of 'We are'.
            test.md:279:9:Microsoft.Contractions:Use 'we're' instead of 'we are'.
            test.md:281:20:Microsoft.Contractions:Use 'we are' instead of 'we're'.
            test.md:295:1:Microsoft.Contractions:Use 'We've' instead of 'We have'.
            test.md:297:24:Microsoft.Contractions:Use 'we've' instead of 'we have'.
            test.md:299:36:Microsoft.Contractions:Use 'we have' instead of 'we've'.
            test.md:313:1:Microsoft.Contractions:Use 'Weren't' instead of 'Were not'.
            test.md:315:11:Microsoft.Contractions:Use 'weren't' instead of 'were not'.
            test.md:317:6:Microsoft.Contractions:Use 'weren't' instead of 'were not'.
            test.md:331:1:Microsoft.Contractions:Use 'What's' instead of 'What is'.
            test.md:333:14:Microsoft.Contractions:Use 'what's' instead of 'what is'.
            test.md:335:32:Microsoft.Contractions:Use 'what is' instead of 'what's'.
            test.md:349:1:Microsoft.Contractions:Use 'When's' instead of 'When is'.
            test.md:351:14:Microsoft.Contractions:Use 'when's' instead of 'when is'.
            test.md:353:45:Microsoft.Contractions:Use 'when is' instead of 'when's'.
            test.md:367:1:Microsoft.Contractions:Use 'Where's' instead of 'Where is'.
            test.md:369:14:Microsoft.Contractions:Use 'where's' instead of 'where is'.
            test.md:371:45:Microsoft.Contractions:Use 'where is' instead of 'where's'.
            test.md:385:1:Microsoft.Contractions:Use 'Won't' instead of 'Will not'.
            test.md:387:5:Microsoft.Contractions:Use 'won't' instead of 'will not'.
            test.md:389:3:Microsoft.Contractions:Use 'won't' instead of 'will not'.
            """

    Scenario: Use of dashes
        When I test "Dashes"
        Then the output should contain exactly:
            """
            test.md:3:42:Microsoft.Dashes:Remove the spaces around ' —'.
            test.md:7:7:Microsoft.Dashes:Remove the spaces around ' —'.
            test.md:8:7:Microsoft.Dashes:Remove the spaces around '— '.
            test.md:9:7:Microsoft.Dashes:Remove the spaces around ' — '.
            test.md:10:7:Microsoft.Dashes:Remove the spaces around ' — '.
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
            test.md:1:11:Microsoft.URLFormat:Use 'of' (not 'for') to describe the relationship of the word URL to a resource.
            test.md:3:11:Microsoft.URLFormat:Use 'of' (not 'for') to describe the relationship of the word URL to a resource.
            """

    Scenario: Use of numbers
        When I test "Numbers"
        Then the output should contain exactly:
            """
            test.md:3:48:Microsoft.RangeTime:Use 'to' instead of a dash in 'AM - 2:00 PM'.
            test.md:7:16:Microsoft.Negative:Form a negative number with an en dash, not a hyphen.
            test.md:7:33:Microsoft.Negative:Form a negative number with an en dash, not a hyphen.
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
            test.md:5:14:Microsoft.Hyphens:'officially-maintained' doesn't need a hyphen.
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
            test.md:1:3:Microsoft.Headings:'Test: modern documentation management' should use sentence-style capitalization.
            test.md:1:7:Microsoft.HeadingColons:Capitalize ': m'.
            test.md:5:3:Microsoft.Headings:'This is a Heading' should use sentence-style capitalization.
            test.md:7:13:Microsoft.HeadingPunctuation:Don't use end punctuation in headings.
            test.md:9:3:Microsoft.Headings:'Accepting a JSON response' should use sentence-style capitalization.
            test.md:9:15:Microsoft.HeadingAcronyms:Avoid using acronyms in a title or heading.
            """

    Scenario: Passive voice
        When I test "Passive"
        Then the output should contain exactly:
            """
            test.md:3:6:Microsoft.Passive:'was broken' looks like passive voice.
            test.md:5:6:Microsoft.Passive:'are related' looks like passive voice.
            """

    Scenario: Plurals
        When I test "Plurals"
        Then the output should contain exactly:
            """
            test.md:3:130:Microsoft.Plurals:Don't add '(s)' to a singular noun. Use plural instead.
            test.md:5:13:Microsoft.Plurals:Don't add '(es)' to a singular noun. Use plural instead.
            """

    Scenario: Sentences
        When I test "Sentences"
        Then the output should contain exactly:
            """
            test.md:5:21:Microsoft.Spacing:'y. T' should have one space.
            """
