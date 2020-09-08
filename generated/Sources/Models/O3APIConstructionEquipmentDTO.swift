//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIConstructionEquipmentDTO: APIModel {

    public var actualDays: Int?

    public var actualHours: Int?

    public var constructionEquipmentType: String?

    public var constructionEquipmentTypeID: Int?

    public var entityID: Int?

    public var estimatedDays: Int?

    public var estimatedHours: Int?

    public var id: Int?

    public var isEditable: Bool?

    public var quantity: Int?

    public init(actualDays: Int? = nil, actualHours: Int? = nil, constructionEquipmentType: String? = nil, constructionEquipmentTypeID: Int? = nil, entityID: Int? = nil, estimatedDays: Int? = nil, estimatedHours: Int? = nil, id: Int? = nil, isEditable: Bool? = nil, quantity: Int? = nil) {
        self.actualDays = actualDays
        self.actualHours = actualHours
        self.constructionEquipmentType = constructionEquipmentType
        self.constructionEquipmentTypeID = constructionEquipmentTypeID
        self.entityID = entityID
        self.estimatedDays = estimatedDays
        self.estimatedHours = estimatedHours
        self.id = id
        self.isEditable = isEditable
        self.quantity = quantity
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actualDays = try container.decodeIfPresent("ActualDays")
        actualHours = try container.decodeIfPresent("ActualHours")
        constructionEquipmentType = try container.decodeIfPresent("ConstructionEquipmentType")
        constructionEquipmentTypeID = try container.decodeIfPresent("ConstructionEquipmentTypeID")
        entityID = try container.decodeIfPresent("EntityID")
        estimatedDays = try container.decodeIfPresent("EstimatedDays")
        estimatedHours = try container.decodeIfPresent("EstimatedHours")
        id = try container.decodeIfPresent("ID")
        isEditable = try container.decodeIfPresent("IsEditable")
        quantity = try container.decodeIfPresent("Quantity")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actualDays, forKey: "ActualDays")
        try container.encodeIfPresent(actualHours, forKey: "ActualHours")
        try container.encodeIfPresent(constructionEquipmentType, forKey: "ConstructionEquipmentType")
        try container.encodeIfPresent(constructionEquipmentTypeID, forKey: "ConstructionEquipmentTypeID")
        try container.encodeIfPresent(entityID, forKey: "EntityID")
        try container.encodeIfPresent(estimatedDays, forKey: "EstimatedDays")
        try container.encodeIfPresent(estimatedHours, forKey: "EstimatedHours")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(isEditable, forKey: "IsEditable")
        try container.encodeIfPresent(quantity, forKey: "Quantity")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIConstructionEquipmentDTO else { return false }
      guard self.actualDays == object.actualDays else { return false }
      guard self.actualHours == object.actualHours else { return false }
      guard self.constructionEquipmentType == object.constructionEquipmentType else { return false }
      guard self.constructionEquipmentTypeID == object.constructionEquipmentTypeID else { return false }
      guard self.entityID == object.entityID else { return false }
      guard self.estimatedDays == object.estimatedDays else { return false }
      guard self.estimatedHours == object.estimatedHours else { return false }
      guard self.id == object.id else { return false }
      guard self.isEditable == object.isEditable else { return false }
      guard self.quantity == object.quantity else { return false }
      return true
    }

    public static func == (lhs: O3APIConstructionEquipmentDTO, rhs: O3APIConstructionEquipmentDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
