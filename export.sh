#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

NAME="${1:-krisz-magyar-cv-full}"
THEME="${2:-elegant}"
OUT="generated"

echo "=== JSON Resume Export ==="
echo ""

echo "Installed themes:"
resume themes
echo ""

echo "Validating resume..."
resume validate
echo ""

mkdir -p "$OUT"
rm -f "$OUT"/*

# basics.image/picture is a public URL, so it resolves everywhere (serve,
# standalone HTML, and the headless-browser PDF render) with no preprocessing.

HTML_THEME="$THEME"
PDF_THEME="$THEME"
echo "Generating files  [theme: $THEME, output: $OUT/]"
if ! resume export "$OUT/$NAME.html" --theme "$THEME" --format html 2>/dev/null; then
  HTML_THEME="elegant"
  echo "Theme '$THEME' does not support HTML — falling back to $HTML_THEME)"
  resume export "$OUT/$NAME.html" --theme "$HTML_THEME" --format html
fi
if ! resume export "$OUT/$NAME.pdf" --theme "$THEME" --format pdf 2>/dev/null; then
  PDF_THEME="elegant"
  echo "Theme '$THEME' does not support PDF — falling back to $PDF_THEME)"
  resume export "$OUT/$NAME.pdf" --theme "$PDF_THEME" --format pdf
fi
resume export "$OUT/$NAME.md" --format md

echo ""

echo "Running ATS audit  [theme: $THEME]..."
resume audit --theme "$THEME"
