//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APITrainingLearningPathGroupCourseDTO: APIModel {

    public var courseTypeID: Int?

    public var id: Int?

    public var learningPathGroupID: Int?

    public var sortOrder: Int?

    public init(courseTypeID: Int? = nil, id: Int? = nil, learningPathGroupID: Int? = nil, sortOrder: Int? = nil) {
        self.courseTypeID = courseTypeID
        self.id = id
        self.learningPathGroupID = learningPathGroupID
        self.sortOrder = sortOrder
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        courseTypeID = try container.decodeIfPresent("CourseTypeID")
        id = try container.decodeIfPresent("ID")
        learningPathGroupID = try container.decodeIfPresent("LearningPathGroupID")
        sortOrder = try container.decodeIfPresent("SortOrder")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(courseTypeID, forKey: "CourseTypeID")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(learningPathGroupID, forKey: "LearningPathGroupID")
        try container.encodeIfPresent(sortOrder, forKey: "SortOrder")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APITrainingLearningPathGroupCourseDTO else { return false }
      guard self.courseTypeID == object.courseTypeID else { return false }
      guard self.id == object.id else { return false }
      guard self.learningPathGroupID == object.learningPathGroupID else { return false }
      guard self.sortOrder == object.sortOrder else { return false }
      return true
    }

    public static func == (lhs: O3APITrainingLearningPathGroupCourseDTO, rhs: O3APITrainingLearningPathGroupCourseDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}