//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIEnterpriseGoalDTO: APIModel {

    public var actualFinishDate: DateTime?

    public var actualStartDate: DateTime?

    public var categoryID: Int?

    public var description: String?

    public var focusID: Int?

    public var id: Int?

    public var name: String?

    public var plannedFinishDate: DateTime?

    public var plannedStartDate: DateTime?

    public var progress: Int?

    public var statusID: Int?

    public init(actualFinishDate: DateTime? = nil, actualStartDate: DateTime? = nil, categoryID: Int? = nil, description: String? = nil, focusID: Int? = nil, id: Int? = nil, name: String? = nil, plannedFinishDate: DateTime? = nil, plannedStartDate: DateTime? = nil, progress: Int? = nil, statusID: Int? = nil) {
        self.actualFinishDate = actualFinishDate
        self.actualStartDate = actualStartDate
        self.categoryID = categoryID
        self.description = description
        self.focusID = focusID
        self.id = id
        self.name = name
        self.plannedFinishDate = plannedFinishDate
        self.plannedStartDate = plannedStartDate
        self.progress = progress
        self.statusID = statusID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actualFinishDate = try container.decodeIfPresent("ActualFinishDate")
        actualStartDate = try container.decodeIfPresent("ActualStartDate")
        categoryID = try container.decodeIfPresent("CategoryID")
        description = try container.decodeIfPresent("Description")
        focusID = try container.decodeIfPresent("FocusID")
        id = try container.decodeIfPresent("ID")
        name = try container.decodeIfPresent("Name")
        plannedFinishDate = try container.decodeIfPresent("PlannedFinishDate")
        plannedStartDate = try container.decodeIfPresent("PlannedStartDate")
        progress = try container.decodeIfPresent("Progress")
        statusID = try container.decodeIfPresent("StatusID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actualFinishDate, forKey: "ActualFinishDate")
        try container.encodeIfPresent(actualStartDate, forKey: "ActualStartDate")
        try container.encodeIfPresent(categoryID, forKey: "CategoryID")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(focusID, forKey: "FocusID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(plannedFinishDate, forKey: "PlannedFinishDate")
        try container.encodeIfPresent(plannedStartDate, forKey: "PlannedStartDate")
        try container.encodeIfPresent(progress, forKey: "Progress")
        try container.encodeIfPresent(statusID, forKey: "StatusID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIEnterpriseGoalDTO else { return false }
      guard self.actualFinishDate == object.actualFinishDate else { return false }
      guard self.actualStartDate == object.actualStartDate else { return false }
      guard self.categoryID == object.categoryID else { return false }
      guard self.description == object.description else { return false }
      guard self.focusID == object.focusID else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.plannedFinishDate == object.plannedFinishDate else { return false }
      guard self.plannedStartDate == object.plannedStartDate else { return false }
      guard self.progress == object.progress else { return false }
      guard self.statusID == object.statusID else { return false }
      return true
    }

    public static func == (lhs: O3APIEnterpriseGoalDTO, rhs: O3APIEnterpriseGoalDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
