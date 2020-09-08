//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIGetDeliverablesParams: APIModel {

    public var deliverableType: String?

    public var filterBy: String?

    public var filterValue: String?

    public var showComplete: Bool?

    public init(deliverableType: String? = nil, filterBy: String? = nil, filterValue: String? = nil, showComplete: Bool? = nil) {
        self.deliverableType = deliverableType
        self.filterBy = filterBy
        self.filterValue = filterValue
        self.showComplete = showComplete
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        deliverableType = try container.decodeIfPresent("DeliverableType")
        filterBy = try container.decodeIfPresent("FilterBy")
        filterValue = try container.decodeIfPresent("FilterValue")
        showComplete = try container.decodeIfPresent("ShowComplete")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(deliverableType, forKey: "DeliverableType")
        try container.encodeIfPresent(filterBy, forKey: "FilterBy")
        try container.encodeIfPresent(filterValue, forKey: "FilterValue")
        try container.encodeIfPresent(showComplete, forKey: "ShowComplete")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIGetDeliverablesParams else { return false }
      guard self.deliverableType == object.deliverableType else { return false }
      guard self.filterBy == object.filterBy else { return false }
      guard self.filterValue == object.filterValue else { return false }
      guard self.showComplete == object.showComplete else { return false }
      return true
    }

    public static func == (lhs: O3APIGetDeliverablesParams, rhs: O3APIGetDeliverablesParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
