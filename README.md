# PDFPrintTool

A macOS command‑line utility to silently print one or more PDF files to a specified printer.

## Features

- Silent printing (no print or progress panels)
- Print to a specific printer by name
- Multiple input PDFs via repeated `-f` flags or a single comma‑separated list
- Scaling modes: `fit` (default) or `actual`
- Paper size selection (A‑series, B‑series, C‑series, Letter/Legal/etc., or `pdf` to use the PDF’s original size)
- Error handling with specific exit codes for AppleScript/shell integration
- Optional fast‑fail behavior to stop on the first error

## Requirements

- macOS (AppKit/PDFKit)
- Xcode (to build)
- Swift ArgumentParser (SPM dependency included by the Xcode project)

## Installation

- Open the project in Xcode and build the “PdfPrintTool” scheme in Release.
- The resulting binary will be in your build products (DerivedData). Copy it to a location on your `$PATH` if desired.

## Usage

Run the tool from Terminal and provide one or more PDF paths and a destination printer name.

```sh
PdfPrintTool \
  -f /path/to/one.pdf \
  -f /path/to/two.pdf \
  -p "Office Printer" \
  --scaling fit \
  --paper Letter

