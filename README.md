# Anoma Reasearch Topics Template (ART)

This is a Quarto template that assists you in creating a manuscript for [Anoma Research Topics](https://art.anoma.net).

## Creating a New Article

You can use this as a template to create an article for an AFT journal. To do this, use the following command:

```bash
quarto use template anoma/quarto-template-art
```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document.
From the quarto project or document directory, run the following command to install this format:

```bash
quarto add anoma/quarto-template-art
```

## Updating the Template

After having installed the template using one of the methods above,
you can update it to the latest version the following way:

```bash
quarto update anoma/quarto-template-art
```

## Usage

To render the quarto project:

```bash
quarto render
```

To preview the quarto project:

```bash
quarto preview
```

To use a specific format, you can use the format names `art-pdf` and `art-html`. For example:

```bash
quarto render article.qmd --to art-pdf
```

or in your document or `_quarto.yml`:

```yaml
format:
  pdf: default
  aft-pdf:
    keep-tex: true
```

## Format Options

This format does not have specific format option. Include documentation of such option otherwise. See <https://github.com/quarto-journals/elsevier#format-options> for an example.
