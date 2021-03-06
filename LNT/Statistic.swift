//
//  Statistic.swift
//  LNT
//
//  Created by Henry Popp on 3/27/15.
//  Copyright (c) 2015 Henry Popp. All rights reserved.
//

import Foundation

class Statistic {
    let id: Int?
    let electricityUsage: Int?
    let waterUsage: Int?
    let naturalGasUsage: Int?
    let carbonFootprint: Int?
    let month: Int!
    let year: Int!
    let createdAt: NSDate!
    let updatedAt: NSDate!
    
    init(id: Int!, electricityUsage: Int?, waterUsage: Int?, naturalGasUsage: Int?, carbonFootprint: Int?,
        month: Int!, year: Int!, createdAt: NSDate!, updatedAt: NSDate!) {
            self.id = id
            self.electricityUsage = electricityUsage
            self.waterUsage = waterUsage
            self.naturalGasUsage = naturalGasUsage
            self.carbonFootprint = carbonFootprint
            self.month = month
            self.year = year
            self.createdAt = createdAt
            self.updatedAt = updatedAt
    }
    
    init(electricityUsage: Int?, waterUsage: Int?, naturalGasUsage: Int?, carbonFootprint: Int?,
        month: Int!, year: Int!) {
            self.id = nil
            self.electricityUsage = electricityUsage
            self.waterUsage = waterUsage
            self.naturalGasUsage = naturalGasUsage
            self.carbonFootprint = carbonFootprint
            self.month = month
            self.year = year
            self.createdAt = NSDate()
            self.updatedAt = NSDate()
    }
}