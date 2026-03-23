//
//  Usage.swift
//  PdfPrintTool
//
//  Created by Warren Feltmate on 3/18/26.
//

import Foundation

enum Usage {
    static let full = """
Usage: PDFPrintTool -f <path>[,<path2>...] -d <printer> -s <fit|actual> [-p <size>] [--fast-fail]

Options:
  -f, --file <path(s)>                One or more PDF paths. Accepts a comma-separated list
                                      (e.g., file1.pdf,file2.pdf) or repeated -f flags.
  -d, --printer <name>                Printer name
  -s, --scaling <fit|actual>          Scaling mode for fitting files to selected paper size
  -p, --papersize <size>              Paper size (A4, B5, pdf (default), etc.)
  --fast-fail                         Exit immediately on error (default: continue on error)
  -h, --help                          Show this help and exit

Examples:
  PDFPrintTool -f "/path/to/file1.pdf,/path/to/file2.pdf" -d "HP LaserJet" -s fit -p A4
  PDFPrintTool -f "/path/to/file1.pdf" -f "/path/to/file2.pdf" -d "HP LaserJet" -s actual --fast-fail
  PDFPrintTool --File="/path/to/file.pdf" --Printer="HP LaserJet" --Scaling=actual --papersize=pdf

"""
    
    static let short = """
Error: missing arguments.

Example:
  PDFPrintTool -f "/path/to/file.pdf" -d "HP LaserJet" -s fit -p A4

Use -h or --Help for more information.

"""
}
