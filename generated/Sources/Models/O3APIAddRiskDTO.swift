//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIAddRiskDTO: APIModel {

    public var projectID: Int?

    public init(projectID: Int? = nil) {
        self.projectID = projectID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        projectID = try container.decodeIfPresent("ProjectID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(projectID, forKey: "ProjectID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIAddRiskDTO else { return false }
      guard self.projectID == object.projectID else { return false }
      return true
    }

    public static func == (lhs: O3APIAddRiskDTO, rhs: O3APIAddRiskDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}