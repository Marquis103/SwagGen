//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIBestPracticeDTO: APIModel {

    public var aWPRoleID: Int?

    public var adopt: Bool?

    public var description: String?

    public var id: Int?

    public var measurements: [O3APIBestPracticeMeasurementDTO]?

    public var name: String?

    public var projectID: Int?

    public var projectPhaseTypeID: Int?

    public var score: Int?

    public init(aWPRoleID: Int? = nil, adopt: Bool? = nil, description: String? = nil, id: Int? = nil, measurements: [O3APIBestPracticeMeasurementDTO]? = nil, name: String? = nil, projectID: Int? = nil, projectPhaseTypeID: Int? = nil, score: Int? = nil) {
        self.aWPRoleID = aWPRoleID
        self.adopt = adopt
        self.description = description
        self.id = id
        self.measurements = measurements
        self.name = name
        self.projectID = projectID
        self.projectPhaseTypeID = projectPhaseTypeID
        self.score = score
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        aWPRoleID = try container.decodeIfPresent("AWPRoleID")
        adopt = try container.decodeIfPresent("Adopt")
        description = try container.decodeIfPresent("Description")
        id = try container.decodeIfPresent("ID")
        measurements = try container.decodeArrayIfPresent("Measurements")
        name = try container.decodeIfPresent("Name")
        projectID = try container.decodeIfPresent("ProjectID")
        projectPhaseTypeID = try container.decodeIfPresent("ProjectPhaseTypeID")
        score = try container.decodeIfPresent("Score")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(aWPRoleID, forKey: "AWPRoleID")
        try container.encodeIfPresent(adopt, forKey: "Adopt")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(measurements, forKey: "Measurements")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(projectPhaseTypeID, forKey: "ProjectPhaseTypeID")
        try container.encodeIfPresent(score, forKey: "Score")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIBestPracticeDTO else { return false }
      guard self.aWPRoleID == object.aWPRoleID else { return false }
      guard self.adopt == object.adopt else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.measurements == object.measurements else { return false }
      guard self.name == object.name else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.projectPhaseTypeID == object.projectPhaseTypeID else { return false }
      guard self.score == object.score else { return false }
      return true
    }

    public static func == (lhs: O3APIBestPracticeDTO, rhs: O3APIBestPracticeDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
