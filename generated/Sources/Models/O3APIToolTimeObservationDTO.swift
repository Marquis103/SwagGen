//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIToolTimeObservationDTO: APIModel {

    public var areaID: Int?

    public var comments: String?

    public var dateObserved: DateTime?

    public var disciplineID: Int?

    public var id: Int?

    public var numberOfPeople: Int?

    public var projectID: Int?

    public var toolTimeObservationActivityID: Int?

    public var toolTimeObservationCategoryID: Int?

    public var toolTimeObservationTaskID: Int?

    public var toolTimeObservationTypeID: Int?

    public var toolTimeReadingID: Int?

    public var uniqueID: ID?

    public var unitID: Int?

    public var workCenterID: Int?

    public init(areaID: Int? = nil, comments: String? = nil, dateObserved: DateTime? = nil, disciplineID: Int? = nil, id: Int? = nil, numberOfPeople: Int? = nil, projectID: Int? = nil, toolTimeObservationActivityID: Int? = nil, toolTimeObservationCategoryID: Int? = nil, toolTimeObservationTaskID: Int? = nil, toolTimeObservationTypeID: Int? = nil, toolTimeReadingID: Int? = nil, uniqueID: ID? = nil, unitID: Int? = nil, workCenterID: Int? = nil) {
        self.areaID = areaID
        self.comments = comments
        self.dateObserved = dateObserved
        self.disciplineID = disciplineID
        self.id = id
        self.numberOfPeople = numberOfPeople
        self.projectID = projectID
        self.toolTimeObservationActivityID = toolTimeObservationActivityID
        self.toolTimeObservationCategoryID = toolTimeObservationCategoryID
        self.toolTimeObservationTaskID = toolTimeObservationTaskID
        self.toolTimeObservationTypeID = toolTimeObservationTypeID
        self.toolTimeReadingID = toolTimeReadingID
        self.uniqueID = uniqueID
        self.unitID = unitID
        self.workCenterID = workCenterID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        areaID = try container.decodeIfPresent("AreaID")
        comments = try container.decodeIfPresent("Comments")
        dateObserved = try container.decodeIfPresent("DateObserved")
        disciplineID = try container.decodeIfPresent("DisciplineID")
        id = try container.decodeIfPresent("ID")
        numberOfPeople = try container.decodeIfPresent("NumberOfPeople")
        projectID = try container.decodeIfPresent("ProjectID")
        toolTimeObservationActivityID = try container.decodeIfPresent("ToolTimeObservationActivityID")
        toolTimeObservationCategoryID = try container.decodeIfPresent("ToolTimeObservationCategoryID")
        toolTimeObservationTaskID = try container.decodeIfPresent("ToolTimeObservationTaskID")
        toolTimeObservationTypeID = try container.decodeIfPresent("ToolTimeObservationTypeID")
        toolTimeReadingID = try container.decodeIfPresent("ToolTimeReadingID")
        uniqueID = try container.decodeIfPresent("UniqueID")
        unitID = try container.decodeIfPresent("UnitID")
        workCenterID = try container.decodeIfPresent("WorkCenterID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(areaID, forKey: "AreaID")
        try container.encodeIfPresent(comments, forKey: "Comments")
        try container.encodeIfPresent(dateObserved, forKey: "DateObserved")
        try container.encodeIfPresent(disciplineID, forKey: "DisciplineID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(numberOfPeople, forKey: "NumberOfPeople")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(toolTimeObservationActivityID, forKey: "ToolTimeObservationActivityID")
        try container.encodeIfPresent(toolTimeObservationCategoryID, forKey: "ToolTimeObservationCategoryID")
        try container.encodeIfPresent(toolTimeObservationTaskID, forKey: "ToolTimeObservationTaskID")
        try container.encodeIfPresent(toolTimeObservationTypeID, forKey: "ToolTimeObservationTypeID")
        try container.encodeIfPresent(toolTimeReadingID, forKey: "ToolTimeReadingID")
        try container.encodeIfPresent(uniqueID, forKey: "UniqueID")
        try container.encodeIfPresent(unitID, forKey: "UnitID")
        try container.encodeIfPresent(workCenterID, forKey: "WorkCenterID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIToolTimeObservationDTO else { return false }
      guard self.areaID == object.areaID else { return false }
      guard self.comments == object.comments else { return false }
      guard self.dateObserved == object.dateObserved else { return false }
      guard self.disciplineID == object.disciplineID else { return false }
      guard self.id == object.id else { return false }
      guard self.numberOfPeople == object.numberOfPeople else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.toolTimeObservationActivityID == object.toolTimeObservationActivityID else { return false }
      guard self.toolTimeObservationCategoryID == object.toolTimeObservationCategoryID else { return false }
      guard self.toolTimeObservationTaskID == object.toolTimeObservationTaskID else { return false }
      guard self.toolTimeObservationTypeID == object.toolTimeObservationTypeID else { return false }
      guard self.toolTimeReadingID == object.toolTimeReadingID else { return false }
      guard self.uniqueID == object.uniqueID else { return false }
      guard self.unitID == object.unitID else { return false }
      guard self.workCenterID == object.workCenterID else { return false }
      return true
    }

    public static func == (lhs: O3APIToolTimeObservationDTO, rhs: O3APIToolTimeObservationDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
