//
//  Stops.swift
//  bus
//
//  Created by royyaha on 19.12.19.
//  Copyright © 2019 royyaha. All rights reserved.
//

import Foundation

struct Stop {
    var uid: String
    var latitude: Double
    var longitude: Double
    var sequence: Int
    var boarding: Int  // 上下車站別 : [-1:'可下車',0:'可上下車',1:'可上車']
    var name: [String : String]   // 站牌名稱
    var fuck = "fuck"
    
    #if DEBUG
    static let example: Stop = Stop(uid: "uid", latitude: 12, longitude: 12.0, sequence: 1, boarding: 0, name: ["en":"Taiwan","zh_tw":"台灣"])
    #endif
}
