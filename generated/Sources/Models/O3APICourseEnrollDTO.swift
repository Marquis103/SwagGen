//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APICourseEnrollDTO: APIModel {

    public var courseID: Int?

    public var overridePredecessors: Bool?

    public var sendNotification: Bool?

    public var userID: Int?

    public init(courseID: Int? = nil, overridePredecessors: Bool? = nil, sendNotification: Bool? = nil, userID: Int? = nil) {
        self.courseID = courseID
        self.overridePredecessors = overridePredecessors
        self.sendNotification = sendNotification
        self.userID = userID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        courseID = try container.decodeIfPresent("CourseID")
        overridePredecessors = try container.decodeIfPresent("OverridePredecessors")
        sendNotification = try container.decodeIfPresent("SendNotification")
        userID = try container.decodeIfPresent("UserID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(courseID, forKey: "CourseID")
        try container.encodeIfPresent(overridePredecessors, forKey: "OverridePredecessors")
        try container.encodeIfPresent(sendNotification, forKey: "SendNotification")
        try container.encodeIfPresent(userID, forKey: "UserID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APICourseEnrollDTO else { return false }
      guard self.courseID == object.courseID else { return false }
      guard self.overridePredecessors == object.overridePredecessors else { return false }
      guard self.sendNotification == object.sendNotification else { return false }
      guard self.userID == object.userID else { return false }
      return true
    }

    public static func == (lhs: O3APICourseEnrollDTO, rhs: O3APICourseEnrollDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}