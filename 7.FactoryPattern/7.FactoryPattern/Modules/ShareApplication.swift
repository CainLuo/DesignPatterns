//
//  ShareApplication.swift
//  7.FactoryPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

struct ShareApplication {
    let title: String
    let content: String
    var type: ShareType
    
    enum ShareType: String {
        case facebook
        case line
        case instagram
        case twitter
    }
}

struct ShareContent {
    let shareTitle: String
    let shareContent: String
    let shareType: String
}
