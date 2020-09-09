//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIEnterpriseUserCreateParams: APIModel {

    public var enterpriseID: Int?

    public var userID: Int?

    public init(enterpriseID: Int? = nil, userID: Int? = nil) {
        self.enterpriseID = enterpriseID
        self.userID = userID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        enterpriseID = try container.decodeIfPresent("enterpriseID")
        userID = try container.decodeIfPresent("userID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(enterpriseID, forKey: "enterpriseID")
        try container.encodeIfPresent(userID, forKey: "userID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIEnterpriseUserCreateParams else { return false }
      guard self.enterpriseID == object.enterpriseID else { return false }
      guard self.userID == object.userID else { return false }
      return true
    }

    public static func == (lhs: O3APIEnterpriseUserCreateParams, rhs: O3APIEnterpriseUserCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}