//
//  AppData.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 23/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation

struct AppData {
    
    var busTimes = """
    [
        {
            "type":   "Metro",
            "time":   "2018-01-01T05:45:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:10:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:25:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:50:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T07:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T07:15:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T07:30:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T07:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T08:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T08:15:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T08:30:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T08:45:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T09:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T09:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T09:45:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T10:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T10:45:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T11:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T11:45:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T12:15:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T13:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T13:35:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T14:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T14:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T14:50:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T15:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T16:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T16:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T16:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T17:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T17:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T17:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T18:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T18:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T18:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T19:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T19:20:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T19:40:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T20:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T20:30:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T21:00:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T21:30:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T22:10:00Z",
            "period": "Workday"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T06:00:00Z",
            "period": "Weekend"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T07:20:00Z",
            "period": "Weekend"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T08:40:00Z",
            "period": "Weekend"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T13:45:00Z",
            "period": "Weekend"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T16:45:00Z",
            "period": "Weekend"
        },
        {
            "type":   "Metro",
            "time":   "2018-01-01T21:00:00Z",
            "period": "Weekend"
        },
    ]
    """
}
