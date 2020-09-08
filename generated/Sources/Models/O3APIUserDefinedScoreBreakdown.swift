//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIUserDefinedScoreBreakdown: APIModel {

    public var categoryScores: [O3APICategoryScore]?

    public init(categoryScores: [O3APICategoryScore]? = nil) {
        self.categoryScores = categoryScores
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        categoryScores = try container.decodeArrayIfPresent("CategoryScores")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(categoryScores, forKey: "CategoryScores")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIUserDefinedScoreBreakdown else { return false }
      guard self.categoryScores == object.categoryScores else { return false }
      return true
    }

    public static func == (lhs: O3APIUserDefinedScoreBreakdown, rhs: O3APIUserDefinedScoreBreakdown) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
