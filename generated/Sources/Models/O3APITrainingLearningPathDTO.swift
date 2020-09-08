//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APITrainingLearningPathDTO: APIModel {

    public var companyID: Int?

    public var description: String?

    public var id: Int?

    public var learningPathGroups: [O3APITrainingLearningPathGroupDTO]?

    public var name: String?

    public init(companyID: Int? = nil, description: String? = nil, id: Int? = nil, learningPathGroups: [O3APITrainingLearningPathGroupDTO]? = nil, name: String? = nil) {
        self.companyID = companyID
        self.description = description
        self.id = id
        self.learningPathGroups = learningPathGroups
        self.name = name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        companyID = try container.decodeIfPresent("CompanyID")
        description = try container.decodeIfPresent("Description")
        id = try container.decodeIfPresent("ID")
        learningPathGroups = try container.decodeArrayIfPresent("LearningPathGroups")
        name = try container.decodeIfPresent("Name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(companyID, forKey: "CompanyID")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(learningPathGroups, forKey: "LearningPathGroups")
        try container.encodeIfPresent(name, forKey: "Name")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APITrainingLearningPathDTO else { return false }
      guard self.companyID == object.companyID else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.learningPathGroups == object.learningPathGroups else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: O3APITrainingLearningPathDTO, rhs: O3APITrainingLearningPathDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
