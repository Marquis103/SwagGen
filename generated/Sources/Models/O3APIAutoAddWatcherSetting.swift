//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIAutoAddWatcherSetting: APIModel {

    public var active: Bool?

    public var entityTypeID: Int?

    public var title: String?

    public init(active: Bool? = nil, entityTypeID: Int? = nil, title: String? = nil) {
        self.active = active
        self.entityTypeID = entityTypeID
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        active = try container.decodeIfPresent("Active")
        entityTypeID = try container.decodeIfPresent("EntityTypeID")
        title = try container.decodeIfPresent("Title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(active, forKey: "Active")
        try container.encodeIfPresent(entityTypeID, forKey: "EntityTypeID")
        try container.encodeIfPresent(title, forKey: "Title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIAutoAddWatcherSetting else { return false }
      guard self.active == object.active else { return false }
      guard self.entityTypeID == object.entityTypeID else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: O3APIAutoAddWatcherSetting, rhs: O3APIAutoAddWatcherSetting) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
