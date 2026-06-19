# magyark-cv

Resume source using the [JSON Resume](https://jsonresume.org/) standard.

## Dependency

```bash
npm install -g resume-cli
```


## Setup

```bash
npm install
```

## Edit

All content lives in `resume.json`. The schema is documented at https://jsonresume.org/schema.

## Preview in the browser

```bash
resume serve
```

Opens a live preview at `http://localhost:4000` using the default theme.

## Export to PDF / HTML

```bash
# HTML
resume export resume.html

# PDF (requires a theme that supports it, e.g. kendall)
resume export resume.pdf --theme kendall
```

## Validate

```bash
resume validate
```

## Themes

Browse themes at https://www.npmjs.com/search?q=jsonresume-theme and pass `--theme <name>` to any export command.

Popular choices: `flat`, `kendall`, `paper`, `macchiato`.

## Hosting

Push to GitHub and enable the registry at https://registry.jsonresume.org/kriszmagyar to get a hosted version at:

```
https://registry.jsonresume.org/kriszmagyar
```
