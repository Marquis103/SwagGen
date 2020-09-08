//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APINewAssociationDTO: APIModel {

    public var actionID: Int?

    public var associatedActionID: Int?

    public var associatedEntityID: Int?

    public var associationTypeID: Int?

    public var entityID: Int?

    public var isPredecessor: Bool?

    public var isSuccessor: Bool?

    public init(actionID: Int? = nil, associatedActionID: Int? = nil, associatedEntityID: Int? = nil, associationTypeID: Int? = nil, entityID: Int? = nil, isPredecessor: Bool? = nil, isSuccessor: Bool? = nil) {
        self.actionID = actionID
        self.associatedActionID = associatedActionID
        self.associatedEntityID = associatedEntityID
        self.associationTypeID = associationTypeID
        self.entityID = entityID
        self.isPredecessor = isPredecessor
        self.isSuccessor = isSuccessor
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actionID = try container.decodeIfPresent("ActionID")
        associatedActionID = try container.decodeIfPresent("AssociatedActionID")
        associatedEntityID = try container.decodeIfPresent("AssociatedEntityID")
        associationTypeID = try container.decodeIfPresent("AssociationTypeID")
        entityID = try container.decodeIfPresent("EntityID")
        isPredecessor = try container.decodeIfPresent("IsPredecessor")
        isSuccessor = try container.decodeIfPresent("IsSuccessor")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actionID, forKey: "ActionID")
        try container.encodeIfPresent(associatedActionID, forKey: "AssociatedActionID")
        try container.encodeIfPresent(associatedEntityID, forKey: "AssociatedEntityID")
        try container.encodeIfPresent(associationTypeID, forKey: "AssociationTypeID")
        try container.encodeIfPresent(entityID, forKey: "EntityID")
        try container.encodeIfPresent(isPredecessor, forKey: "IsPredecessor")
        try container.encodeIfPresent(isSuccessor, forKey: "IsSuccessor")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APINewAssociationDTO else { return false }
      guard self.actionID == object.actionID else { return false }
      guard self.associatedActionID == object.associatedActionID else { return false }
      guard self.associatedEntityID == object.associatedEntityID else { return false }
      guard self.associationTypeID == object.associationTypeID else { return false }
      guard self.entityID == object.entityID else { return false }
      guard self.isPredecessor == object.isPredecessor else { return false }
      guard self.isSuccessor == object.isSuccessor else { return false }
      return true
    }

    public static func == (lhs: O3APINewAssociationDTO, rhs: O3APINewAssociationDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
