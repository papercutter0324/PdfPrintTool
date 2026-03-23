//
//  PrinterNameResolver.swift
//  PdfPrintTool
//
//  Created by Warren Feltmate on 3/23/26.
//

import AppKit

enum PrinterNameResolver {
    
    static func resolve(named name: String) -> NSPrinter? {
        
        if let p = NSPrinter(name: name) {
            return p
        }
        
        let normalized = name.replacingOccurrences(of: "_", with: " ")
        if let p = NSPrinter(name: normalized) {
            return p
        }
        
        for available in NSPrinter.printerNames {
            if available.replacingOccurrences(of: " ", with: "_") == name {
                return NSPrinter(name: available)
            }
        }
        
        return nil
    }
}
