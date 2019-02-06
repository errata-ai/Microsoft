# Microsoft [![Build Status](https://travis-ci.org/errata-ai/Microsoft.svg?branch=master)](https://travis-ci.org/errata-ai/Microsoft) ![GitHub release](https://img.shields.io/github/release/ValeLint/vale.svg) ![license](https://img.shields.io/github/license/mashape/apistatus.svg)

This repository contains a [Vale-compatible](https://github.com/errata-ai/vale) implementation of the [*Microsoft Writing Style Guide*](https://docs.microsoft.com/en-us/style-guide/welcome/) ([LICENSE](https://github.com/MicrosoftDocs/microsoft-style-guide/blob/master/LICENSE)).

The goal is to showcase how to build and maintain a full-featured style guide for Vale, including examples of every available [extension point](https://errata-ai.github.io/vale/styles/#extension-points) and a test suite using [Cucumber](https://cucumber.io/), [`yamllint`](https://github.com/adrienverge/yamllint), and [Travis CI](https://travis-ci.org/).

## Getting Started

> :exclamation: Microsoft requires Vale >= **1.0.0**. :exclamation:

Download the [latest release](https://github.com/errata-ai/Microsoft/releases), copy the "Microsoft" directory onto your `StylesPath`, and include it in your configuration file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = warning # suggestion, warning or error

# Only Markdown and .txt files; change to whatever you're using.
[*.{md,txt}]
# List of styles to load.
BasedOnStyles = Microsoft
```

See [Usage](https://github.com/errata-ai/vale/#usage) for more information.

## Repository Structure

<dl>
  <dt><a href="https://github.com/errata-ai/Microsoft/tree/master/Microsoft"><code>/Microsoft</code></a></dt>
  <dd>The <a href="http://yaml.org/">YAML</a>-based rule implementations that make up our style.</dd>

  <dt><a href="https://github.com/errata-ai/Microsoft/tree/master/fixtures"><code>/fixtures</code></a></dt>
  <dd>The individual unit tests. Each directory should be named after a rule found in <code>/Microsoft</code> and include its own <code>.vale.ini</code> file that isolates its target rule.</dd>

  <dt><a href="https://github.com/errata-ai/Microsoft/tree/master/features"><code>/features</code></a></dt>
  <dd>The <a href="https://github.com/cucumber/cucumber/wiki/Step-Definitions">Cucumber Step Definitions</a> we use to test our fixtures. Essentially, we use the <a href="https://github.com/cucumber/aruba">aruba</a> framework to test Vale's output after running it on each of our fixture directories.</dd>
</dl>

## Extension Points

|   `check`    |                    Implementation(s)                   |
|:------------:|:---------------------------------------------------:|
| [`existence`](https://errata-ai.github.io/vale/styles/#existence)  | [`Accessibility.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Accessibility.yml), [`Adverbs.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Adverbs.yml), [`AMPM.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/AMPM.yml), [`Auto.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Auto.yml), [`Avoid.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Avoid.yml), [`Dashes.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Dashes.yml), [`DateFormat.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/DateFormat.yml), [`Ellipses.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Ellipses.yml), [`FirstPerson.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/FirstPerson.yml), [`HeadingColons.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/HeadingColons.yml), [`HeadingPunctuation.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/HeadingPunctuation.yml), [`Hyphens.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Hyphens.yml), [`OxfordComma.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/OxfordComma.yml), [`Passive.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Passive.yml), [`Quotes.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Quotes.yml) |
| [`substitution`](https://errata-ai.github.io/vale/styles/#substitution)  | [`Terms.yml`](https://github.com/ValeLint/vale-boilerplate/blob/master/src/18F/Terms.yml), [`DropDown.yml`](https://github.com/ValeLint/vale-boilerplate/blob/master/src/18F/DropDown.yml) (POS tags) |
| [`occurrence`](https://errata-ai.github.io/vale/styles/#occurrence)  | [`SentenceLength.yml`](https://github.com/ValeLint/vale-boilerplate/blob/master/src/18F/SentenceLength.yml) |
| [`repetition`](https://errata-ai.github.io/vale/styles/#repetition)  | [`Repetition.yml`](https://github.com/ValeLint/vale/blob/master/rule/Repetition.yml) |
| [`consistency`](https://errata-ai.github.io/vale/styles/#consistency)  | [`Spelling.yml`](https://github.com/ValeLint/vale/blob/master/styles/demo/Spelling.yml) |
| [`capitalization`](https://errata-ai.github.io/vale/styles/#capitalization)  | [`Headings.yml`](https://github.com/ValeLint/vale-boilerplate/blob/master/src/18F/Headings.yml) |
| [`readability`](https://errata-ai.github.io/vale/styles/#readability)  | [`Reading.yml`](https://github.com/ValeLint/vale/blob/master/styles/demo/Reading.yml) |
| [`conditional`](https://errata-ai.github.io/vale/styles/#conditional)  | [`UnexpandedAcronyms.yml`](https://github.com/ValeLint/vale-boilerplate/blob/master/src/18F/UnexpandedAcronyms.yml) |
| [`spelling`](https://errata-ai.github.io/vale/styles/#spelling)  | [`Spellcheck.yml`](https://github.com/ValeLint/vale/blob/master/styles/demo/Spellcheck.yml) |


