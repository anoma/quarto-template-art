# Anoma Research Topics (ART) Quarto Template

This is a [Quarto](https://quarto.org) template that assists you in creating a manuscript for [Anoma Research Topics](https://art.anoma.net).

## Creating a new article

You can use this as a template to create an article for an AFT journal. To do this, use the following command:

```bash
quarto use template anoma/quarto-template-art
```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation for existing document

You may also use this format with an existing Quarto project or document.
From the quarto project or document directory, run the following command to install this format:

```bash
quarto add anoma/quarto-template-art
```

## Updating the template

After having installed the template using one of the methods above,
you can update it to the latest version the following way:

```bash
quarto update anoma/quarto-template-art
```

## Format Options

See an example in [`index.qmd`](index.qmd).

The default options are defined in [`_extensions/anoma/art/_extension.yml`](_extensions/anoma/art/_extension.yml).

## Example

You can view a preview of the rendered template at https://anoma.github.io/quarto-template-art/

## Usage

Render the project (HTML only):

```bash
quarto render
```

Render the project (HTML & PDF):

```bash
quarto render --profile pdf
```

Preview the project (HTML only):

```bash
quarto preview
```

Preview the project (HTML & PDF):

```bash
quarto preview --profile pdf
```

To render a single file in a specific format, you can use the format names `art-pdf` and `art-html`:

```bash
quarto render index.qmd -t art-pdf
```

The default project profile is defined in [`_quarto.yml`](_quarto.yml),
local settings are in [`_quarto.yml.local`](_quarto.yml.local),
while the additional options for the `pdf` profile are defined [`_quarto-pdf.yml`](_quarto-pdf.yml).

The default output directory is `_output`.

## Makefile

When using `make`, the output files are generated in `$QUARTO_OUTPUT/$QUARTO_BRANCH`,
where `QUARTO_OUTPUT` defaults to `_output`
and `QUARTO_BRANCH` defaults to the current Git branch name.

Build HTML only:

`make`

Build HTML & PDF:

`make pdf`

Preview HTML only:

`make preview`

This watches files for changes, and re-renders and reloads the HTML upon change.

Preview both HTML & PDF:

`make preview-pdf`

This will also re-render the PDF upon change.

Open the PDF file in a viewer that reloads the file on change.

## GitHub Action

A GitHub Action for rendering and publishing the project can be found here:
[`.github/workflows/quarto-publish.yml`](.github/workflows/quarto-publish.yml)
