//
//  SongStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

struct Song {
    var url: NSURL
    var id: UInt64
    var title: String
    var permalink: NSURL
    var duration: Double
    var rmsAmplitude: Double
    var code: String
    
}