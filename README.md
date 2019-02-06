# Microsoft [![Build Status](https://travis-ci.org/errata-ai/Microsoft.svg?branch=master)](https://travis-ci.org/errata-ai/Microsoft) ![Vale version](https://img.shields.io/badge/vale-%3E%3D%20v1.0.0-blue.svg) ![license](https://img.shields.io/github/license/mashape/apistatus.svg)

This repository contains a [Vale-compatible](https://github.com/errata-ai/vale) implementation of the [*Microsoft Writing Style Guide*](https://docs.microsoft.com/en-us/style-guide/welcome/) ([LICENSE](https://github.com/MicrosoftDocs/microsoft-style-guide/blob/master/LICENSE)).

The goal is to showcase how to build and maintain a full-featured style guide for Vale, including many examples of using [extension points](https://errata-ai.github.io/vale/styles/#extension-points) and a test suite using [Cucumber](https://cucumber.io/), [`yamllint`](https://github.com/adrienverge/yamllint), and [Travis CI](https://travis-ci.org/).

## Getting Started

> :exclamation: Microsoft requires Vale >= **1.0.0**. :exclamation:

Download the [latest release](https://github.com/errata-ai/Microsoft/releases), copy the "Microsoft" directory to your `StylesPath`, and include it in your configuration file:

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
  <dd>The <a href="https://docs.cucumber.io/cucumber/step-definitions/">Cucumber Step Definitions</a> we use to test our fixtures. Essentially, we use the <a href="https://github.com/cucumber/aruba">aruba</a> framework to test Vale's output after running it on each of our fixture directories.</dd>
</dl>

## Extension Points

|   Check    |                    Implementation(s)                   |
|:------------:|:---------------------------------------------------:|
| [`existence`](https://errata-ai.github.io/vale/styles/#existence)  | [`Accessibility.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Accessibility.yml), [`Adverbs.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Adverbs.yml), [`AMPM.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/AMPM.yml), [`Auto.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Auto.yml), [`Avoid.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Avoid.yml), [`Dashes.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Dashes.yml), [`DateFormat.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/DateFormat.yml), [`Ellipses.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Ellipses.yml), [`FirstPerson.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/FirstPerson.yml), [`HeadingColons.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/HeadingColons.yml), [`HeadingPunctuation.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/HeadingPunctuation.yml), [`Hyphens.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Hyphens.yml), [`OxfordComma.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/OxfordComma.yml), [`Passive.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Passive.yml), [`Quotes.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Quotes.yml) |
| [`substitution`](https://errata-ai.github.io/vale/styles/#substitution)  | [`Backend.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Backend.yml) (POS tags), [`ComplexWords.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/ComplexWords.yml), [`Contractions.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Contractions.yml), [`Foreign.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Foreign.yml), [`Terms.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Terms.yml) |
| [`occurrence`](https://errata-ai.github.io/vale/styles/#occurrence)  | N/A |
| [`repetition`](https://errata-ai.github.io/vale/styles/#repetition)  | N/A |
| [`consistency`](https://errata-ai.github.io/vale/styles/#consistency)| N/A |
| [`capitalization`](https://errata-ai.github.io/vale/styles/#capitalization)  | [`Headings.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Headings.yml) |
| [`readability`](https://errata-ai.github.io/vale/styles/#readability)  | N/A |
| [`conditional`](https://errata-ai.github.io/vale/styles/#conditional)  | [`Acronyms.yml`](https://github.com/errata-ai/Microsoft/blob/master/Microsoft/Acronyms.yml) |
| [`spelling`](https://errata-ai.github.io/vale/styles/#spelling)  | N/A |


