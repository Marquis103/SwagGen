//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIEnterpriseUserDTO: APIModel {

    public var id: Int?

    public var isEnterpriseAdmin: Bool?

    public var userDisplayName: String?

    public var userID: Int?

    public var username: String?

    public init(id: Int? = nil, isEnterpriseAdmin: Bool? = nil, userDisplayName: String? = nil, userID: Int? = nil, username: String? = nil) {
        self.id = id
        self.isEnterpriseAdmin = isEnterpriseAdmin
        self.userDisplayName = userDisplayName
        self.userID = userID
        self.username = username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decodeIfPresent("ID")
        isEnterpriseAdmin = try container.decodeIfPresent("IsEnterpriseAdmin")
        userDisplayName = try container.decodeIfPresent("UserDisplayName")
        userID = try container.decodeIfPresent("UserID")
        username = try container.decodeIfPresent("Username")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(isEnterpriseAdmin, forKey: "IsEnterpriseAdmin")
        try container.encodeIfPresent(userDisplayName, forKey: "UserDisplayName")
        try container.encodeIfPresent(userID, forKey: "UserID")
        try container.encodeIfPresent(username, forKey: "Username")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIEnterpriseUserDTO else { return false }
      guard self.id == object.id else { return false }
      guard self.isEnterpriseAdmin == object.isEnterpriseAdmin else { return false }
      guard self.userDisplayName == object.userDisplayName else { return false }
      guard self.userID == object.userID else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: O3APIEnterpriseUserDTO, rhs: O3APIEnterpriseUserDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
