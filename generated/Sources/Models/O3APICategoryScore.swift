//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APICategoryScore: APIModel {

    public var key: Int?

    public var value: Double?

    public init(key: Int? = nil, value: Double? = nil) {
        self.key = key
        self.value = value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        key = try container.decodeIfPresent("Key")
        value = try container.decodeIfPresent("Value")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(key, forKey: "Key")
        try container.encodeIfPresent(value, forKey: "Value")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APICategoryScore else { return false }
      guard self.key == object.key else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: O3APICategoryScore, rhs: O3APICategoryScore) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
