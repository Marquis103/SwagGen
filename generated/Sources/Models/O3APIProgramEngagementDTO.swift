//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIProgramEngagementDTO: APIModel {

    public var awareActualDate: DateTime?

    public var awareTargetDate: DateTime?

    public var championActualDate: DateTime?

    public var championTargetDate: DateTime?

    public var currentEngagementLevel: Int?

    public var departmentID: Int?

    public var disciplineID: Int?

    public var engagedActualDate: DateTime?

    public var engagedTargetDate: DateTime?

    public var goalEngagementLevel: Int?

    public var id: Int?

    public var name: String?

    public var nextTargetDate: DateTime?

    public var notes: String?

    public var program: String?

    public var programID: Int?

    public var project: String?

    public var projectID: Int?

    public var reportsToUserID: Int?

    public var teamLeaderUserID: Int?

    public var userID: Int?

    public init(awareActualDate: DateTime? = nil, awareTargetDate: DateTime? = nil, championActualDate: DateTime? = nil, championTargetDate: DateTime? = nil, currentEngagementLevel: Int? = nil, departmentID: Int? = nil, disciplineID: Int? = nil, engagedActualDate: DateTime? = nil, engagedTargetDate: DateTime? = nil, goalEngagementLevel: Int? = nil, id: Int? = nil, name: String? = nil, nextTargetDate: DateTime? = nil, notes: String? = nil, program: String? = nil, programID: Int? = nil, project: String? = nil, projectID: Int? = nil, reportsToUserID: Int? = nil, teamLeaderUserID: Int? = nil, userID: Int? = nil) {
        self.awareActualDate = awareActualDate
        self.awareTargetDate = awareTargetDate
        self.championActualDate = championActualDate
        self.championTargetDate = championTargetDate
        self.currentEngagementLevel = currentEngagementLevel
        self.departmentID = departmentID
        self.disciplineID = disciplineID
        self.engagedActualDate = engagedActualDate
        self.engagedTargetDate = engagedTargetDate
        self.goalEngagementLevel = goalEngagementLevel
        self.id = id
        self.name = name
        self.nextTargetDate = nextTargetDate
        self.notes = notes
        self.program = program
        self.programID = programID
        self.project = project
        self.projectID = projectID
        self.reportsToUserID = reportsToUserID
        self.teamLeaderUserID = teamLeaderUserID
        self.userID = userID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        awareActualDate = try container.decodeIfPresent("AwareActualDate")
        awareTargetDate = try container.decodeIfPresent("AwareTargetDate")
        championActualDate = try container.decodeIfPresent("ChampionActualDate")
        championTargetDate = try container.decodeIfPresent("ChampionTargetDate")
        currentEngagementLevel = try container.decodeIfPresent("CurrentEngagementLevel")
        departmentID = try container.decodeIfPresent("DepartmentID")
        disciplineID = try container.decodeIfPresent("DisciplineID")
        engagedActualDate = try container.decodeIfPresent("EngagedActualDate")
        engagedTargetDate = try container.decodeIfPresent("EngagedTargetDate")
        goalEngagementLevel = try container.decodeIfPresent("GoalEngagementLevel")
        id = try container.decodeIfPresent("ID")
        name = try container.decodeIfPresent("Name")
        nextTargetDate = try container.decodeIfPresent("NextTargetDate")
        notes = try container.decodeIfPresent("Notes")
        program = try container.decodeIfPresent("Program")
        programID = try container.decodeIfPresent("ProgramID")
        project = try container.decodeIfPresent("Project")
        projectID = try container.decodeIfPresent("ProjectID")
        reportsToUserID = try container.decodeIfPresent("ReportsToUserID")
        teamLeaderUserID = try container.decodeIfPresent("TeamLeaderUserID")
        userID = try container.decodeIfPresent("UserID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(awareActualDate, forKey: "AwareActualDate")
        try container.encodeIfPresent(awareTargetDate, forKey: "AwareTargetDate")
        try container.encodeIfPresent(championActualDate, forKey: "ChampionActualDate")
        try container.encodeIfPresent(championTargetDate, forKey: "ChampionTargetDate")
        try container.encodeIfPresent(currentEngagementLevel, forKey: "CurrentEngagementLevel")
        try container.encodeIfPresent(departmentID, forKey: "DepartmentID")
        try container.encodeIfPresent(disciplineID, forKey: "DisciplineID")
        try container.encodeIfPresent(engagedActualDate, forKey: "EngagedActualDate")
        try container.encodeIfPresent(engagedTargetDate, forKey: "EngagedTargetDate")
        try container.encodeIfPresent(goalEngagementLevel, forKey: "GoalEngagementLevel")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(nextTargetDate, forKey: "NextTargetDate")
        try container.encodeIfPresent(notes, forKey: "Notes")
        try container.encodeIfPresent(program, forKey: "Program")
        try container.encodeIfPresent(programID, forKey: "ProgramID")
        try container.encodeIfPresent(project, forKey: "Project")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(reportsToUserID, forKey: "ReportsToUserID")
        try container.encodeIfPresent(teamLeaderUserID, forKey: "TeamLeaderUserID")
        try container.encodeIfPresent(userID, forKey: "UserID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIProgramEngagementDTO else { return false }
      guard self.awareActualDate == object.awareActualDate else { return false }
      guard self.awareTargetDate == object.awareTargetDate else { return false }
      guard self.championActualDate == object.championActualDate else { return false }
      guard self.championTargetDate == object.championTargetDate else { return false }
      guard self.currentEngagementLevel == object.currentEngagementLevel else { return false }
      guard self.departmentID == object.departmentID else { return false }
      guard self.disciplineID == object.disciplineID else { return false }
      guard self.engagedActualDate == object.engagedActualDate else { return false }
      guard self.engagedTargetDate == object.engagedTargetDate else { return false }
      guard self.goalEngagementLevel == object.goalEngagementLevel else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.nextTargetDate == object.nextTargetDate else { return false }
      guard self.notes == object.notes else { return false }
      guard self.program == object.program else { return false }
      guard self.programID == object.programID else { return false }
      guard self.project == object.project else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.reportsToUserID == object.reportsToUserID else { return false }
      guard self.teamLeaderUserID == object.teamLeaderUserID else { return false }
      guard self.userID == object.userID else { return false }
      return true
    }

    public static func == (lhs: O3APIProgramEngagementDTO, rhs: O3APIProgramEngagementDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}