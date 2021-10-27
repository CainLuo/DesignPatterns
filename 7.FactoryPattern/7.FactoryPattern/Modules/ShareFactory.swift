//
//  ShareFactory.swift
//  7.FactoryPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

struct ShareFactory {
    
    func createShareContent(_ model: ShareApplication) -> ShareContent {
        let shareTitle: String
        let shareContent: String
        switch model.type {
        case .facebook:
            shareTitle = "Share to facebook"
            shareContent = "I am from Mars"
        case .instagram:
            shareTitle = "Share to instagram"
            shareContent = "I am from Venus"
        case .line:
            shareTitle = "Share to Line"
            shareContent = "I am from Mercury"
        case .twitter:
            shareTitle = "Share to Twitter"
            shareContent = "I am from Jupiter"
        }
        return ShareContent(shareTitle: shareTitle,
                            shareContent: shareContent,
                            shareType: model.type.rawValue)
    }
}
