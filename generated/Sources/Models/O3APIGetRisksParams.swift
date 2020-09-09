//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIGetRisksParams: APIModel {

    public var impact: Int?

    public var probability: Int?

    public var showComplete: Bool?

    public var widgetID: Int?

    public init(impact: Int? = nil, probability: Int? = nil, showComplete: Bool? = nil, widgetID: Int? = nil) {
        self.impact = impact
        self.probability = probability
        self.showComplete = showComplete
        self.widgetID = widgetID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        impact = try container.decodeIfPresent("Impact")
        probability = try container.decodeIfPresent("Probability")
        showComplete = try container.decodeIfPresent("ShowComplete")
        widgetID = try container.decodeIfPresent("WidgetID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(impact, forKey: "Impact")
        try container.encodeIfPresent(probability, forKey: "Probability")
        try container.encodeIfPresent(showComplete, forKey: "ShowComplete")
        try container.encodeIfPresent(widgetID, forKey: "WidgetID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIGetRisksParams else { return false }
      guard self.impact == object.impact else { return false }
      guard self.probability == object.probability else { return false }
      guard self.showComplete == object.showComplete else { return false }
      guard self.widgetID == object.widgetID else { return false }
      return true
    }

    public static func == (lhs: O3APIGetRisksParams, rhs: O3APIGetRisksParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}