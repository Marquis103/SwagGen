//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIProjectGoalCreateParams: APIModel {

    public var description: String?

    public var name: String?

    public var projectID: Int?

    public init(description: String? = nil, name: String? = nil, projectID: Int? = nil) {
        self.description = description
        self.name = name
        self.projectID = projectID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("Description")
        name = try container.decodeIfPresent("Name")
        projectID = try container.decodeIfPresent("projectID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(projectID, forKey: "projectID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIProjectGoalCreateParams else { return false }
      guard self.description == object.description else { return false }
      guard self.name == object.name else { return false }
      guard self.projectID == object.projectID else { return false }
      return true
    }

    public static func == (lhs: O3APIProjectGoalCreateParams, rhs: O3APIProjectGoalCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}