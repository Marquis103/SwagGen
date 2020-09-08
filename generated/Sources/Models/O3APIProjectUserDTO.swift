//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIProjectUserDTO: APIModel {

    public var id: Int?

    public var isProjectAdmin: Bool?

    public var projectID: Int?

    public var projectName: String?

    public var projectTeams: [Int]?

    public var roles: [Int]?

    public var userDisplayName: String?

    public var userID: Int?

    public var username: String?

    public init(id: Int? = nil, isProjectAdmin: Bool? = nil, projectID: Int? = nil, projectName: String? = nil, projectTeams: [Int]? = nil, roles: [Int]? = nil, userDisplayName: String? = nil, userID: Int? = nil, username: String? = nil) {
        self.id = id
        self.isProjectAdmin = isProjectAdmin
        self.projectID = projectID
        self.projectName = projectName
        self.projectTeams = projectTeams
        self.roles = roles
        self.userDisplayName = userDisplayName
        self.userID = userID
        self.username = username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decodeIfPresent("ID")
        isProjectAdmin = try container.decodeIfPresent("IsProjectAdmin")
        projectID = try container.decodeIfPresent("ProjectID")
        projectName = try container.decodeIfPresent("ProjectName")
        projectTeams = try container.decodeArrayIfPresent("ProjectTeams")
        roles = try container.decodeArrayIfPresent("Roles")
        userDisplayName = try container.decodeIfPresent("UserDisplayName")
        userID = try container.decodeIfPresent("UserID")
        username = try container.decodeIfPresent("Username")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(isProjectAdmin, forKey: "IsProjectAdmin")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(projectName, forKey: "ProjectName")
        try container.encodeIfPresent(projectTeams, forKey: "ProjectTeams")
        try container.encodeIfPresent(roles, forKey: "Roles")
        try container.encodeIfPresent(userDisplayName, forKey: "UserDisplayName")
        try container.encodeIfPresent(userID, forKey: "UserID")
        try container.encodeIfPresent(username, forKey: "Username")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIProjectUserDTO else { return false }
      guard self.id == object.id else { return false }
      guard self.isProjectAdmin == object.isProjectAdmin else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.projectName == object.projectName else { return false }
      guard self.projectTeams == object.projectTeams else { return false }
      guard self.roles == object.roles else { return false }
      guard self.userDisplayName == object.userDisplayName else { return false }
      guard self.userID == object.userID else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: O3APIProjectUserDTO, rhs: O3APIProjectUserDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
