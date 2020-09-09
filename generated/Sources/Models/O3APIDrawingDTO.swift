//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIDrawingDTO: APIModel {

    public var companyID: Int?

    public var description: String?

    public var drawingTypeID: Int?

    public var id: Int?

    public var name: String?

    public var projectID: Int?

    public var statusID: Int?

    public init(companyID: Int? = nil, description: String? = nil, drawingTypeID: Int? = nil, id: Int? = nil, name: String? = nil, projectID: Int? = nil, statusID: Int? = nil) {
        self.companyID = companyID
        self.description = description
        self.drawingTypeID = drawingTypeID
        self.id = id
        self.name = name
        self.projectID = projectID
        self.statusID = statusID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        companyID = try container.decodeIfPresent("CompanyID")
        description = try container.decodeIfPresent("Description")
        drawingTypeID = try container.decodeIfPresent("DrawingTypeID")
        id = try container.decodeIfPresent("ID")
        name = try container.decodeIfPresent("Name")
        projectID = try container.decodeIfPresent("ProjectID")
        statusID = try container.decodeIfPresent("StatusID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(companyID, forKey: "CompanyID")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(drawingTypeID, forKey: "DrawingTypeID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(statusID, forKey: "StatusID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIDrawingDTO else { return false }
      guard self.companyID == object.companyID else { return false }
      guard self.description == object.description else { return false }
      guard self.drawingTypeID == object.drawingTypeID else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.statusID == object.statusID else { return false }
      return true
    }

    public static func == (lhs: O3APIDrawingDTO, rhs: O3APIDrawingDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}