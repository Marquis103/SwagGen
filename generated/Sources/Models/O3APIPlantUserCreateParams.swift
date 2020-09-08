//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIPlantUserCreateParams: APIModel {

    public var plantID: Int?

    public var userID: Int?

    public init(plantID: Int? = nil, userID: Int? = nil) {
        self.plantID = plantID
        self.userID = userID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        plantID = try container.decodeIfPresent("plantID")
        userID = try container.decodeIfPresent("userID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(plantID, forKey: "plantID")
        try container.encodeIfPresent(userID, forKey: "userID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIPlantUserCreateParams else { return false }
      guard self.plantID == object.plantID else { return false }
      guard self.userID == object.userID else { return false }
      return true
    }

    public static func == (lhs: O3APIPlantUserCreateParams, rhs: O3APIPlantUserCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
