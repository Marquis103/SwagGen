//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIFileUploadSettings: APIModel {

    public var allowedFileTypes: String?

    public init(allowedFileTypes: String? = nil) {
        self.allowedFileTypes = allowedFileTypes
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        allowedFileTypes = try container.decodeIfPresent("AllowedFileTypes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(allowedFileTypes, forKey: "AllowedFileTypes")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIFileUploadSettings else { return false }
      guard self.allowedFileTypes == object.allowedFileTypes else { return false }
      return true
    }

    public static func == (lhs: O3APIFileUploadSettings, rhs: O3APIFileUploadSettings) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
