// 
//  DateManager.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//
import Foundation

class DateService {    
    private var datePattern: String
    private var date: Date
    var shownDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let neededDateString = dateFormatter.string(from: date)
        let neededDateByPattern = dateFormatter.date(from: neededDateString)
        dateFormatter.dateFormat = datePattern
        guard let resultingDate: Date = neededDateByPattern else { return "Date error."}
        let formattedDate = dateFormatter.string(from: resultingDate)
        return formattedDate
    }
    
    init? (date: Date, datePattern: String) {
        self.date = date
        self.datePattern = datePattern
    }
}

