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

## Export

Validates, cleans `generated/`, exports HTML + PDF + Markdown, and runs an ATS audit:

```bash
npm run export
```

Output lands in `generated/krisz-magyar-cv-full.{html,pdf,md}`.

To use a different name or theme (default: `elegant`):

```bash
npm run export -- <name> <theme>
# e.g.
npm run export -- krisz-magyar-cv-full even
```

Available themes are printed at the start of each run. Install more with:

```bash
npm install jsonresume-theme-<name>
```

## Validate

```bash
resume validate
```

## Hosting

Push to GitHub and enable the registry at https://registry.jsonresume.org/kriszmagyar to get a hosted version at:

```
https://registry.jsonresume.org/kriszmagyar
```
