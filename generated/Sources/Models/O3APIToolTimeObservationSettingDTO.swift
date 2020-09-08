//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIToolTimeObservationSettingDTO: APIModel {

    public var code: String?

    public var id: Int?

    public var name: String?

    public var sortOrder: Int?

    public init(code: String? = nil, id: Int? = nil, name: String? = nil, sortOrder: Int? = nil) {
        self.code = code
        self.id = id
        self.name = name
        self.sortOrder = sortOrder
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        code = try container.decodeIfPresent("Code")
        id = try container.decodeIfPresent("ID")
        name = try container.decodeIfPresent("Name")
        sortOrder = try container.decodeIfPresent("SortOrder")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(code, forKey: "Code")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(sortOrder, forKey: "SortOrder")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIToolTimeObservationSettingDTO else { return false }
      guard self.code == object.code else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.sortOrder == object.sortOrder else { return false }
      return true
    }

    public static func == (lhs: O3APIToolTimeObservationSettingDTO, rhs: O3APIToolTimeObservationSettingDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
