//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIConstructionComponentDTO: APIModel {

    public var entityID: Int?

    public var modelID: Int?

    public var dbID: Int?

    public init(entityID: Int? = nil, modelID: Int? = nil, dbID: Int? = nil) {
        self.entityID = entityID
        self.modelID = modelID
        self.dbID = dbID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        entityID = try container.decodeIfPresent("EntityID")
        modelID = try container.decodeIfPresent("ModelID")
        dbID = try container.decodeIfPresent("dbID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(entityID, forKey: "EntityID")
        try container.encodeIfPresent(modelID, forKey: "ModelID")
        try container.encodeIfPresent(dbID, forKey: "dbID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIConstructionComponentDTO else { return false }
      guard self.entityID == object.entityID else { return false }
      guard self.modelID == object.modelID else { return false }
      guard self.dbID == object.dbID else { return false }
      return true
    }

    public static func == (lhs: O3APIConstructionComponentDTO, rhs: O3APIConstructionComponentDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}