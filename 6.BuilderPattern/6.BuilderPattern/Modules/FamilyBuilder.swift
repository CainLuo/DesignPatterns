//
//  FamilyBuilder.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

class FamilyBuilder {
    enum Error: Swift.Error {
        case notFamily
    }
    
    private(set) var type: FamilyType = .family
    private(set) var identitys: Identity = []
    private(set) var bodyInfos: BodyInfo = []
    
    private var notFamilys: [Identity] = [.strangers]
    
    /// 添加Identity
    /// - Parameter identity: Identity
    func addIdentity(_ identity: Identity) {
        identitys.insert(identity)
    }
    
    /// 移除Identity
    /// - Parameter identity: Identity
    func removeIdentity(_ identity: Identity) {
        identitys.remove(identity)
    }
    
    /// 添加Body Info
    /// - Parameter info: BodyInfo
    func addBodyInfo(_ info: BodyInfo) {
        bodyInfos.insert(info)
    }
    
    /// 移除Body Info
    /// - Parameter info: BodyInfo
    func removeBodyInfo(_ info: BodyInfo) {
        bodyInfos.remove(info)
    }
    
    /// 设置家庭类型
    /// - Parameter identity: Identity
    /// - Throws: 判断是否是家庭成员
    public func setType(_ identity: Identity) throws {
        guard isAvailable(identity) else {
            self.type = .notFamily
            throw Error.notFamily
        }
        self.type = .family
    }
    
    /// 校验家庭成员身份
    /// - Parameter identity: Identity
    /// - Returns: Bool
    public func isAvailable(_ identity: Identity) -> Bool {
        return !notFamilys.contains(identity)
    }
        
    /// 构建Family
    /// - Returns: Family
    func build() -> Family {
        Family(type: type,
               identity: identitys,
               bodyInfo: bodyInfos)
    }
}
