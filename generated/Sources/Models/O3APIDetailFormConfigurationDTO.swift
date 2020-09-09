//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIDetailFormConfigurationDTO: APIModel {

    public enum O3APIEntityTypeID: Int, Codable, Equatable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
        case _6 = 6
        case _7 = 7
        case _8 = 8
        case _9 = 9
        case _10 = 10
        case _11 = 11
        case _12 = 12
        case _13 = 13
        case _14 = 14
        case _15 = 15
        case _16 = 16
        case _17 = 17
        case _19 = 19
        case _20 = 20
        case _21 = 21
        case _22 = 22
        case _23 = 23
        case _24 = 24
        case _25 = 25
        case _26 = 26
        case _27 = 27
        case _28 = 28
        case _29 = 29
        case _30 = 30
        case _31 = 31
        case _32 = 32
        case _33 = 33
        case _34 = 34
        case _35 = 35
        case _36 = 36
        case _37 = 37
        case _38 = 38
        case _39 = 39
        case _40 = 40
        case _41 = 41
        case _42 = 42
        case _43 = 43
        case undecodable

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(Int.self)
            self = O3APIEntityTypeID(rawValue: rawValue) ?? .undecodable
        }
    }

    public enum O3APIFormTypeID: Int, Codable, Equatable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case undecodable

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(Int.self)
            self = O3APIFormTypeID(rawValue: rawValue) ?? .undecodable
        }
    }

    public var configurationDataJSON: String?

    public var entityTypeID: O3APIEntityTypeID?

    public var formTypeID: O3APIFormTypeID?

    public var id: Int?

    public var isDefault: Bool?

    public var name: String?

    public var projectID: Int?

    public init(configurationDataJSON: String? = nil, entityTypeID: O3APIEntityTypeID? = nil, formTypeID: O3APIFormTypeID? = nil, id: Int? = nil, isDefault: Bool? = nil, name: String? = nil, projectID: Int? = nil) {
        self.configurationDataJSON = configurationDataJSON
        self.entityTypeID = entityTypeID
        self.formTypeID = formTypeID
        self.id = id
        self.isDefault = isDefault
        self.name = name
        self.projectID = projectID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        configurationDataJSON = try container.decodeIfPresent("ConfigurationDataJSON")
        entityTypeID = try container.decodeIfPresent("EntityTypeID")
        formTypeID = try container.decodeIfPresent("FormTypeID")
        id = try container.decodeIfPresent("ID")
        isDefault = try container.decodeIfPresent("IsDefault")
        name = try container.decodeIfPresent("Name")
        projectID = try container.decodeIfPresent("ProjectID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(configurationDataJSON, forKey: "ConfigurationDataJSON")
        try container.encodeIfPresent(entityTypeID, forKey: "EntityTypeID")
        try container.encodeIfPresent(formTypeID, forKey: "FormTypeID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(isDefault, forKey: "IsDefault")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIDetailFormConfigurationDTO else { return false }
      guard self.configurationDataJSON == object.configurationDataJSON else { return false }
      guard self.entityTypeID == object.entityTypeID else { return false }
      guard self.formTypeID == object.formTypeID else { return false }
      guard self.id == object.id else { return false }
      guard self.isDefault == object.isDefault else { return false }
      guard self.name == object.name else { return false }
      guard self.projectID == object.projectID else { return false }
      return true
    }

    public static func == (lhs: O3APIDetailFormConfigurationDTO, rhs: O3APIDetailFormConfigurationDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}