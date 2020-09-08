//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIDashboardCollectionMembershipDTO: APIModel {

    public var dashboardCollectionID: Int?

    public var dashboardCollectionMemberTypeID: Int?

    public var id: Int?

    public var projectTeam: String?

    public var projectTeamID: Int?

    public var role: String?

    public var roleID: Int?

    public var user: String?

    public var userID: Int?

    public var username: String?

    public init(dashboardCollectionID: Int? = nil, dashboardCollectionMemberTypeID: Int? = nil, id: Int? = nil, projectTeam: String? = nil, projectTeamID: Int? = nil, role: String? = nil, roleID: Int? = nil, user: String? = nil, userID: Int? = nil, username: String? = nil) {
        self.dashboardCollectionID = dashboardCollectionID
        self.dashboardCollectionMemberTypeID = dashboardCollectionMemberTypeID
        self.id = id
        self.projectTeam = projectTeam
        self.projectTeamID = projectTeamID
        self.role = role
        self.roleID = roleID
        self.user = user
        self.userID = userID
        self.username = username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        dashboardCollectionID = try container.decodeIfPresent("DashboardCollectionID")
        dashboardCollectionMemberTypeID = try container.decodeIfPresent("DashboardCollectionMemberTypeID")
        id = try container.decodeIfPresent("ID")
        projectTeam = try container.decodeIfPresent("ProjectTeam")
        projectTeamID = try container.decodeIfPresent("ProjectTeamID")
        role = try container.decodeIfPresent("Role")
        roleID = try container.decodeIfPresent("RoleID")
        user = try container.decodeIfPresent("User")
        userID = try container.decodeIfPresent("UserID")
        username = try container.decodeIfPresent("Username")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(dashboardCollectionID, forKey: "DashboardCollectionID")
        try container.encodeIfPresent(dashboardCollectionMemberTypeID, forKey: "DashboardCollectionMemberTypeID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(projectTeam, forKey: "ProjectTeam")
        try container.encodeIfPresent(projectTeamID, forKey: "ProjectTeamID")
        try container.encodeIfPresent(role, forKey: "Role")
        try container.encodeIfPresent(roleID, forKey: "RoleID")
        try container.encodeIfPresent(user, forKey: "User")
        try container.encodeIfPresent(userID, forKey: "UserID")
        try container.encodeIfPresent(username, forKey: "Username")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIDashboardCollectionMembershipDTO else { return false }
      guard self.dashboardCollectionID == object.dashboardCollectionID else { return false }
      guard self.dashboardCollectionMemberTypeID == object.dashboardCollectionMemberTypeID else { return false }
      guard self.id == object.id else { return false }
      guard self.projectTeam == object.projectTeam else { return false }
      guard self.projectTeamID == object.projectTeamID else { return false }
      guard self.role == object.role else { return false }
      guard self.roleID == object.roleID else { return false }
      guard self.user == object.user else { return false }
      guard self.userID == object.userID else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: O3APIDashboardCollectionMembershipDTO, rhs: O3APIDashboardCollectionMembershipDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
