//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIDetailFormField: APIModel {

    public var column: Int?

    public var fieldDefinition: O3APIBaseDisplayAttribute?

    public var height: Int?

    public var propertyName: String?

    public var row: Int?

    public var width: Int?

    public init(column: Int? = nil, fieldDefinition: O3APIBaseDisplayAttribute? = nil, height: Int? = nil, propertyName: String? = nil, row: Int? = nil, width: Int? = nil) {
        self.column = column
        self.fieldDefinition = fieldDefinition
        self.height = height
        self.propertyName = propertyName
        self.row = row
        self.width = width
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        column = try container.decodeIfPresent("Column")
        fieldDefinition = try container.decodeIfPresent("FieldDefinition")
        height = try container.decodeIfPresent("Height")
        propertyName = try container.decodeIfPresent("PropertyName")
        row = try container.decodeIfPresent("Row")
        width = try container.decodeIfPresent("Width")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(column, forKey: "Column")
        try container.encodeIfPresent(fieldDefinition, forKey: "FieldDefinition")
        try container.encodeIfPresent(height, forKey: "Height")
        try container.encodeIfPresent(propertyName, forKey: "PropertyName")
        try container.encodeIfPresent(row, forKey: "Row")
        try container.encodeIfPresent(width, forKey: "Width")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIDetailFormField else { return false }
      guard self.column == object.column else { return false }
      guard self.fieldDefinition == object.fieldDefinition else { return false }
      guard self.height == object.height else { return false }
      guard self.propertyName == object.propertyName else { return false }
      guard self.row == object.row else { return false }
      guard self.width == object.width else { return false }
      return true
    }

    public static func == (lhs: O3APIDetailFormField, rhs: O3APIDetailFormField) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
