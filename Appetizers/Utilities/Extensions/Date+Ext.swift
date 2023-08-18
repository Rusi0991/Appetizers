//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/17/23.
//
 import SwiftUI

extension Date {
    var eighteenYearsAgo : Date{
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo : Date{
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
