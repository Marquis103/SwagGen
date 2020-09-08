//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIGetTasksParams: APIModel {

    public var hideSubTasks: Bool?

    public var hideTasksWithChildren: Bool?

    public var showComplete: Bool?

    public var taskTypeID: Int?

    public init(hideSubTasks: Bool? = nil, hideTasksWithChildren: Bool? = nil, showComplete: Bool? = nil, taskTypeID: Int? = nil) {
        self.hideSubTasks = hideSubTasks
        self.hideTasksWithChildren = hideTasksWithChildren
        self.showComplete = showComplete
        self.taskTypeID = taskTypeID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        hideSubTasks = try container.decodeIfPresent("HideSubTasks")
        hideTasksWithChildren = try container.decodeIfPresent("HideTasksWithChildren")
        showComplete = try container.decodeIfPresent("ShowComplete")
        taskTypeID = try container.decodeIfPresent("TaskTypeID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(hideSubTasks, forKey: "HideSubTasks")
        try container.encodeIfPresent(hideTasksWithChildren, forKey: "HideTasksWithChildren")
        try container.encodeIfPresent(showComplete, forKey: "ShowComplete")
        try container.encodeIfPresent(taskTypeID, forKey: "TaskTypeID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIGetTasksParams else { return false }
      guard self.hideSubTasks == object.hideSubTasks else { return false }
      guard self.hideTasksWithChildren == object.hideTasksWithChildren else { return false }
      guard self.showComplete == object.showComplete else { return false }
      guard self.taskTypeID == object.taskTypeID else { return false }
      return true
    }

    public static func == (lhs: O3APIGetTasksParams, rhs: O3APIGetTasksParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
