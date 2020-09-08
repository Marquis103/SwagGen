//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIProjectUserCreateParams: APIModel {

    public var projectID: Int?

    public var userID: Int?

    public init(projectID: Int? = nil, userID: Int? = nil) {
        self.projectID = projectID
        self.userID = userID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        projectID = try container.decodeIfPresent("projectID")
        userID = try container.decodeIfPresent("userID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(projectID, forKey: "projectID")
        try container.encodeIfPresent(userID, forKey: "userID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIProjectUserCreateParams else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.userID == object.userID else { return false }
      return true
    }

    public static func == (lhs: O3APIProjectUserCreateParams, rhs: O3APIProjectUserCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
