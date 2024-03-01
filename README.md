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
while the additional options for the `pdf` profile are defined [`_quarto-pdf.yml`](_quarto-pdf.yml).

## Format Options

See an example in [`index.qmd`](index.qmd).

The default options are defined in [`_extensions/anoma/art/_extension.yml`](_extensions/anoma/art/_extension.yml).
