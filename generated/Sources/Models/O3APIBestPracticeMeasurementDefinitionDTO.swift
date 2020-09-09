//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIBestPracticeMeasurementDefinitionDTO: APIModel {

    public enum O3APIDisplayOptions: Int, Codable, Equatable, CaseIterable {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
        case _6 = 6
        case _7 = 7
        case undecodable

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(Int.self)
            self = O3APIDisplayOptions(rawValue: rawValue) ?? .undecodable
        }
    }

    public var categoryMeasurement: O3APIBestPracticeCategoryMeasurementDefinition?

    public var categoryName: String?

    public var defaultSettings: O3APIBestPracticeSettings?

    public var defaultWidgetName: String?

    public var description: String?

    public var displayOptions: [O3APIDisplayOptions]?

    public var documentJson: String?

    public var id: Int?

    public var initiativeID: Int?

    public var key: String?

    public var name: String?

    public var programID: Int?

    public var projectID: Int?

    public var requiredData: String?

    public var subCategory: String?

    public var uom: String?

    public var userCanEdit: Bool?

    public var weight: Int?

    public init(categoryMeasurement: O3APIBestPracticeCategoryMeasurementDefinition? = nil, categoryName: String? = nil, defaultSettings: O3APIBestPracticeSettings? = nil, defaultWidgetName: String? = nil, description: String? = nil, displayOptions: [O3APIDisplayOptions]? = nil, documentJson: String? = nil, id: Int? = nil, initiativeID: Int? = nil, key: String? = nil, name: String? = nil, programID: Int? = nil, projectID: Int? = nil, requiredData: String? = nil, subCategory: String? = nil, uom: String? = nil, userCanEdit: Bool? = nil, weight: Int? = nil) {
        self.categoryMeasurement = categoryMeasurement
        self.categoryName = categoryName
        self.defaultSettings = defaultSettings
        self.defaultWidgetName = defaultWidgetName
        self.description = description
        self.displayOptions = displayOptions
        self.documentJson = documentJson
        self.id = id
        self.initiativeID = initiativeID
        self.key = key
        self.name = name
        self.programID = programID
        self.projectID = projectID
        self.requiredData = requiredData
        self.subCategory = subCategory
        self.uom = uom
        self.userCanEdit = userCanEdit
        self.weight = weight
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        categoryMeasurement = try container.decodeIfPresent("CategoryMeasurement")
        categoryName = try container.decodeIfPresent("CategoryName")
        defaultSettings = try container.decodeIfPresent("DefaultSettings")
        defaultWidgetName = try container.decodeIfPresent("DefaultWidgetName")
        description = try container.decodeIfPresent("Description")
        displayOptions = try container.decodeArrayIfPresent("DisplayOptions")
        documentJson = try container.decodeIfPresent("DocumentJson")
        id = try container.decodeIfPresent("ID")
        initiativeID = try container.decodeIfPresent("InitiativeID")
        key = try container.decodeIfPresent("Key")
        name = try container.decodeIfPresent("Name")
        programID = try container.decodeIfPresent("ProgramID")
        projectID = try container.decodeIfPresent("ProjectID")
        requiredData = try container.decodeIfPresent("RequiredData")
        subCategory = try container.decodeIfPresent("SubCategory")
        uom = try container.decodeIfPresent("UOM")
        userCanEdit = try container.decodeIfPresent("UserCanEdit")
        weight = try container.decodeIfPresent("Weight")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(categoryMeasurement, forKey: "CategoryMeasurement")
        try container.encodeIfPresent(categoryName, forKey: "CategoryName")
        try container.encodeIfPresent(defaultSettings, forKey: "DefaultSettings")
        try container.encodeIfPresent(defaultWidgetName, forKey: "DefaultWidgetName")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(displayOptions, forKey: "DisplayOptions")
        try container.encodeIfPresent(documentJson, forKey: "DocumentJson")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(initiativeID, forKey: "InitiativeID")
        try container.encodeIfPresent(key, forKey: "Key")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(programID, forKey: "ProgramID")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(requiredData, forKey: "RequiredData")
        try container.encodeIfPresent(subCategory, forKey: "SubCategory")
        try container.encodeIfPresent(uom, forKey: "UOM")
        try container.encodeIfPresent(userCanEdit, forKey: "UserCanEdit")
        try container.encodeIfPresent(weight, forKey: "Weight")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIBestPracticeMeasurementDefinitionDTO else { return false }
      guard self.categoryMeasurement == object.categoryMeasurement else { return false }
      guard self.categoryName == object.categoryName else { return false }
      guard self.defaultSettings == object.defaultSettings else { return false }
      guard self.defaultWidgetName == object.defaultWidgetName else { return false }
      guard self.description == object.description else { return false }
      guard self.displayOptions == object.displayOptions else { return false }
      guard self.documentJson == object.documentJson else { return false }
      guard self.id == object.id else { return false }
      guard self.initiativeID == object.initiativeID else { return false }
      guard self.key == object.key else { return false }
      guard self.name == object.name else { return false }
      guard self.programID == object.programID else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.requiredData == object.requiredData else { return false }
      guard self.subCategory == object.subCategory else { return false }
      guard self.uom == object.uom else { return false }
      guard self.userCanEdit == object.userCanEdit else { return false }
      guard self.weight == object.weight else { return false }
      return true
    }

    public static func == (lhs: O3APIBestPracticeMeasurementDefinitionDTO, rhs: O3APIBestPracticeMeasurementDefinitionDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}