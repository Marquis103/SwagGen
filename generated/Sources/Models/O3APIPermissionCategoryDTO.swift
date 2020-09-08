//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIPermissionCategoryDTO: APIModel {

    public var category: String?

    public var permissions: [O3APIPermissionDTO]?

    public init(category: String? = nil, permissions: [O3APIPermissionDTO]? = nil) {
        self.category = category
        self.permissions = permissions
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        category = try container.decodeIfPresent("Category")
        permissions = try container.decodeArrayIfPresent("Permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(category, forKey: "Category")
        try container.encodeIfPresent(permissions, forKey: "Permissions")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIPermissionCategoryDTO else { return false }
      guard self.category == object.category else { return false }
      guard self.permissions == object.permissions else { return false }
      return true
    }

    public static func == (lhs: O3APIPermissionCategoryDTO, rhs: O3APIPermissionCategoryDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
