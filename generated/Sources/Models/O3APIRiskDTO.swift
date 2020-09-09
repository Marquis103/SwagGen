//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIRiskDTO: APIModel {

    public var actualFinishDate: DateTime?

    public var actualStartDate: DateTime?

    public var assignedByUser: String?

    public var assignedByUserID: Int?

    public var assignedToRole: String?

    public var assignedToRoleID: Int?

    public var assignedToUser: String?

    public var assignedToUserGroup: String?

    public var assignedToUserGroupID: Int?

    public var assignedToUserID: Int?

    public var cause: String?

    public var companyID: Int?

    public var consequence: String?

    public var contingencyPlan: String?

    public var contingencyTrigger: String?

    public var costImpactID: Int?

    public var dateActivated: DateTime?

    public var dateDue: DateTime?

    public var dateDueDateAssigned: DateTime?

    public var dateIdentified: DateTime?

    public var description: String?

    public var event: String?

    public var forecastDate: DateTime?

    public var id: Int?

    public var identifiedBy: String?

    public var impactID: Int?

    public var isUrgent: Bool?

    public var level1: Bool?

    public var meetingTypeID: Int?

    public var mitigationPlan: String?

    public var mitigationStatus: String?

    public var name: String?

    public var nextReviewDate: DateTime?

    public var notes: String?

    public var phase: String?

    public var plannedFinishDate: DateTime?

    public var plannedStartDate: DateTime?

    public var priorityID: Int?

    public var probabilityID: Int?

    public var productionAvailabilityImpactID: Int?

    public var projectID: Int?

    public var projectPhaseID: Int?

    public var recoveryImpactID: Int?

    public var riskCategoryIDs: [Int]?

    public var riskFunctionalAreaID: Int?

    public var riskID: String?

    public var riskMitigationPlanID: Int?

    public var riskMitigationStatusID: Int?

    public var riskType: String?

    public var riskTypeID: Int?

    public var scheduleImpactID: Int?

    public var sequenceNumber: Int?

    public var sourceID: Int?

    public var sourceImportID: Int?

    public var sourceKey: String?

    public var status: String?

    public var statusID: Int?

    public var targetCostImpactID: Int?

    public var targetImpactID: Int?

    public var targetProbabilityID: Int?

    public var targetProductionAvailabilityImpactID: Int?

    public var targetRecoveryImpactID: Int?

    public var targetScheduleImpactID: Int?

    public var trendID: Int?

    public init(actualFinishDate: DateTime? = nil, actualStartDate: DateTime? = nil, assignedByUser: String? = nil, assignedByUserID: Int? = nil, assignedToRole: String? = nil, assignedToRoleID: Int? = nil, assignedToUser: String? = nil, assignedToUserGroup: String? = nil, assignedToUserGroupID: Int? = nil, assignedToUserID: Int? = nil, cause: String? = nil, companyID: Int? = nil, consequence: String? = nil, contingencyPlan: String? = nil, contingencyTrigger: String? = nil, costImpactID: Int? = nil, dateActivated: DateTime? = nil, dateDue: DateTime? = nil, dateDueDateAssigned: DateTime? = nil, dateIdentified: DateTime? = nil, description: String? = nil, event: String? = nil, forecastDate: DateTime? = nil, id: Int? = nil, identifiedBy: String? = nil, impactID: Int? = nil, isUrgent: Bool? = nil, level1: Bool? = nil, meetingTypeID: Int? = nil, mitigationPlan: String? = nil, mitigationStatus: String? = nil, name: String? = nil, nextReviewDate: DateTime? = nil, notes: String? = nil, phase: String? = nil, plannedFinishDate: DateTime? = nil, plannedStartDate: DateTime? = nil, priorityID: Int? = nil, probabilityID: Int? = nil, productionAvailabilityImpactID: Int? = nil, projectID: Int? = nil, projectPhaseID: Int? = nil, recoveryImpactID: Int? = nil, riskCategoryIDs: [Int]? = nil, riskFunctionalAreaID: Int? = nil, riskID: String? = nil, riskMitigationPlanID: Int? = nil, riskMitigationStatusID: Int? = nil, riskType: String? = nil, riskTypeID: Int? = nil, scheduleImpactID: Int? = nil, sequenceNumber: Int? = nil, sourceID: Int? = nil, sourceImportID: Int? = nil, sourceKey: String? = nil, status: String? = nil, statusID: Int? = nil, targetCostImpactID: Int? = nil, targetImpactID: Int? = nil, targetProbabilityID: Int? = nil, targetProductionAvailabilityImpactID: Int? = nil, targetRecoveryImpactID: Int? = nil, targetScheduleImpactID: Int? = nil, trendID: Int? = nil) {
        self.actualFinishDate = actualFinishDate
        self.actualStartDate = actualStartDate
        self.assignedByUser = assignedByUser
        self.assignedByUserID = assignedByUserID
        self.assignedToRole = assignedToRole
        self.assignedToRoleID = assignedToRoleID
        self.assignedToUser = assignedToUser
        self.assignedToUserGroup = assignedToUserGroup
        self.assignedToUserGroupID = assignedToUserGroupID
        self.assignedToUserID = assignedToUserID
        self.cause = cause
        self.companyID = companyID
        self.consequence = consequence
        self.contingencyPlan = contingencyPlan
        self.contingencyTrigger = contingencyTrigger
        self.costImpactID = costImpactID
        self.dateActivated = dateActivated
        self.dateDue = dateDue
        self.dateDueDateAssigned = dateDueDateAssigned
        self.dateIdentified = dateIdentified
        self.description = description
        self.event = event
        self.forecastDate = forecastDate
        self.id = id
        self.identifiedBy = identifiedBy
        self.impactID = impactID
        self.isUrgent = isUrgent
        self.level1 = level1
        self.meetingTypeID = meetingTypeID
        self.mitigationPlan = mitigationPlan
        self.mitigationStatus = mitigationStatus
        self.name = name
        self.nextReviewDate = nextReviewDate
        self.notes = notes
        self.phase = phase
        self.plannedFinishDate = plannedFinishDate
        self.plannedStartDate = plannedStartDate
        self.priorityID = priorityID
        self.probabilityID = probabilityID
        self.productionAvailabilityImpactID = productionAvailabilityImpactID
        self.projectID = projectID
        self.projectPhaseID = projectPhaseID
        self.recoveryImpactID = recoveryImpactID
        self.riskCategoryIDs = riskCategoryIDs
        self.riskFunctionalAreaID = riskFunctionalAreaID
        self.riskID = riskID
        self.riskMitigationPlanID = riskMitigationPlanID
        self.riskMitigationStatusID = riskMitigationStatusID
        self.riskType = riskType
        self.riskTypeID = riskTypeID
        self.scheduleImpactID = scheduleImpactID
        self.sequenceNumber = sequenceNumber
        self.sourceID = sourceID
        self.sourceImportID = sourceImportID
        self.sourceKey = sourceKey
        self.status = status
        self.statusID = statusID
        self.targetCostImpactID = targetCostImpactID
        self.targetImpactID = targetImpactID
        self.targetProbabilityID = targetProbabilityID
        self.targetProductionAvailabilityImpactID = targetProductionAvailabilityImpactID
        self.targetRecoveryImpactID = targetRecoveryImpactID
        self.targetScheduleImpactID = targetScheduleImpactID
        self.trendID = trendID
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        actualFinishDate = try container.decodeIfPresent("ActualFinishDate")
        actualStartDate = try container.decodeIfPresent("ActualStartDate")
        assignedByUser = try container.decodeIfPresent("AssignedByUser")
        assignedByUserID = try container.decodeIfPresent("AssignedByUserID")
        assignedToRole = try container.decodeIfPresent("AssignedToRole")
        assignedToRoleID = try container.decodeIfPresent("AssignedToRoleID")
        assignedToUser = try container.decodeIfPresent("AssignedToUser")
        assignedToUserGroup = try container.decodeIfPresent("AssignedToUserGroup")
        assignedToUserGroupID = try container.decodeIfPresent("AssignedToUserGroupID")
        assignedToUserID = try container.decodeIfPresent("AssignedToUserID")
        cause = try container.decodeIfPresent("Cause")
        companyID = try container.decodeIfPresent("CompanyID")
        consequence = try container.decodeIfPresent("Consequence")
        contingencyPlan = try container.decodeIfPresent("ContingencyPlan")
        contingencyTrigger = try container.decodeIfPresent("ContingencyTrigger")
        costImpactID = try container.decodeIfPresent("CostImpactID")
        dateActivated = try container.decodeIfPresent("DateActivated")
        dateDue = try container.decodeIfPresent("DateDue")
        dateDueDateAssigned = try container.decodeIfPresent("DateDueDateAssigned")
        dateIdentified = try container.decodeIfPresent("DateIdentified")
        description = try container.decodeIfPresent("Description")
        event = try container.decodeIfPresent("Event")
        forecastDate = try container.decodeIfPresent("ForecastDate")
        id = try container.decodeIfPresent("ID")
        identifiedBy = try container.decodeIfPresent("IdentifiedBy")
        impactID = try container.decodeIfPresent("ImpactID")
        isUrgent = try container.decodeIfPresent("IsUrgent")
        level1 = try container.decodeIfPresent("Level1")
        meetingTypeID = try container.decodeIfPresent("MeetingTypeID")
        mitigationPlan = try container.decodeIfPresent("MitigationPlan")
        mitigationStatus = try container.decodeIfPresent("MitigationStatus")
        name = try container.decodeIfPresent("Name")
        nextReviewDate = try container.decodeIfPresent("NextReviewDate")
        notes = try container.decodeIfPresent("Notes")
        phase = try container.decodeIfPresent("Phase")
        plannedFinishDate = try container.decodeIfPresent("PlannedFinishDate")
        plannedStartDate = try container.decodeIfPresent("PlannedStartDate")
        priorityID = try container.decodeIfPresent("PriorityID")
        probabilityID = try container.decodeIfPresent("ProbabilityID")
        productionAvailabilityImpactID = try container.decodeIfPresent("ProductionAvailabilityImpactID")
        projectID = try container.decodeIfPresent("ProjectID")
        projectPhaseID = try container.decodeIfPresent("ProjectPhaseID")
        recoveryImpactID = try container.decodeIfPresent("RecoveryImpactID")
        riskCategoryIDs = try container.decodeArrayIfPresent("RiskCategoryIDs")
        riskFunctionalAreaID = try container.decodeIfPresent("RiskFunctionalAreaID")
        riskID = try container.decodeIfPresent("RiskID")
        riskMitigationPlanID = try container.decodeIfPresent("RiskMitigationPlanID")
        riskMitigationStatusID = try container.decodeIfPresent("RiskMitigationStatusID")
        riskType = try container.decodeIfPresent("RiskType")
        riskTypeID = try container.decodeIfPresent("RiskTypeID")
        scheduleImpactID = try container.decodeIfPresent("ScheduleImpactID")
        sequenceNumber = try container.decodeIfPresent("SequenceNumber")
        sourceID = try container.decodeIfPresent("SourceID")
        sourceImportID = try container.decodeIfPresent("SourceImportID")
        sourceKey = try container.decodeIfPresent("SourceKey")
        status = try container.decodeIfPresent("Status")
        statusID = try container.decodeIfPresent("StatusID")
        targetCostImpactID = try container.decodeIfPresent("TargetCostImpactID")
        targetImpactID = try container.decodeIfPresent("TargetImpactID")
        targetProbabilityID = try container.decodeIfPresent("TargetProbabilityID")
        targetProductionAvailabilityImpactID = try container.decodeIfPresent("TargetProductionAvailabilityImpactID")
        targetRecoveryImpactID = try container.decodeIfPresent("TargetRecoveryImpactID")
        targetScheduleImpactID = try container.decodeIfPresent("TargetScheduleImpactID")
        trendID = try container.decodeIfPresent("TrendID")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(actualFinishDate, forKey: "ActualFinishDate")
        try container.encodeIfPresent(actualStartDate, forKey: "ActualStartDate")
        try container.encodeIfPresent(assignedByUser, forKey: "AssignedByUser")
        try container.encodeIfPresent(assignedByUserID, forKey: "AssignedByUserID")
        try container.encodeIfPresent(assignedToRole, forKey: "AssignedToRole")
        try container.encodeIfPresent(assignedToRoleID, forKey: "AssignedToRoleID")
        try container.encodeIfPresent(assignedToUser, forKey: "AssignedToUser")
        try container.encodeIfPresent(assignedToUserGroup, forKey: "AssignedToUserGroup")
        try container.encodeIfPresent(assignedToUserGroupID, forKey: "AssignedToUserGroupID")
        try container.encodeIfPresent(assignedToUserID, forKey: "AssignedToUserID")
        try container.encodeIfPresent(cause, forKey: "Cause")
        try container.encodeIfPresent(companyID, forKey: "CompanyID")
        try container.encodeIfPresent(consequence, forKey: "Consequence")
        try container.encodeIfPresent(contingencyPlan, forKey: "ContingencyPlan")
        try container.encodeIfPresent(contingencyTrigger, forKey: "ContingencyTrigger")
        try container.encodeIfPresent(costImpactID, forKey: "CostImpactID")
        try container.encodeIfPresent(dateActivated, forKey: "DateActivated")
        try container.encodeIfPresent(dateDue, forKey: "DateDue")
        try container.encodeIfPresent(dateDueDateAssigned, forKey: "DateDueDateAssigned")
        try container.encodeIfPresent(dateIdentified, forKey: "DateIdentified")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(event, forKey: "Event")
        try container.encodeIfPresent(forecastDate, forKey: "ForecastDate")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(identifiedBy, forKey: "IdentifiedBy")
        try container.encodeIfPresent(impactID, forKey: "ImpactID")
        try container.encodeIfPresent(isUrgent, forKey: "IsUrgent")
        try container.encodeIfPresent(level1, forKey: "Level1")
        try container.encodeIfPresent(meetingTypeID, forKey: "MeetingTypeID")
        try container.encodeIfPresent(mitigationPlan, forKey: "MitigationPlan")
        try container.encodeIfPresent(mitigationStatus, forKey: "MitigationStatus")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(nextReviewDate, forKey: "NextReviewDate")
        try container.encodeIfPresent(notes, forKey: "Notes")
        try container.encodeIfPresent(phase, forKey: "Phase")
        try container.encodeIfPresent(plannedFinishDate, forKey: "PlannedFinishDate")
        try container.encodeIfPresent(plannedStartDate, forKey: "PlannedStartDate")
        try container.encodeIfPresent(priorityID, forKey: "PriorityID")
        try container.encodeIfPresent(probabilityID, forKey: "ProbabilityID")
        try container.encodeIfPresent(productionAvailabilityImpactID, forKey: "ProductionAvailabilityImpactID")
        try container.encodeIfPresent(projectID, forKey: "ProjectID")
        try container.encodeIfPresent(projectPhaseID, forKey: "ProjectPhaseID")
        try container.encodeIfPresent(recoveryImpactID, forKey: "RecoveryImpactID")
        try container.encodeIfPresent(riskCategoryIDs, forKey: "RiskCategoryIDs")
        try container.encodeIfPresent(riskFunctionalAreaID, forKey: "RiskFunctionalAreaID")
        try container.encodeIfPresent(riskID, forKey: "RiskID")
        try container.encodeIfPresent(riskMitigationPlanID, forKey: "RiskMitigationPlanID")
        try container.encodeIfPresent(riskMitigationStatusID, forKey: "RiskMitigationStatusID")
        try container.encodeIfPresent(riskType, forKey: "RiskType")
        try container.encodeIfPresent(riskTypeID, forKey: "RiskTypeID")
        try container.encodeIfPresent(scheduleImpactID, forKey: "ScheduleImpactID")
        try container.encodeIfPresent(sequenceNumber, forKey: "SequenceNumber")
        try container.encodeIfPresent(sourceID, forKey: "SourceID")
        try container.encodeIfPresent(sourceImportID, forKey: "SourceImportID")
        try container.encodeIfPresent(sourceKey, forKey: "SourceKey")
        try container.encodeIfPresent(status, forKey: "Status")
        try container.encodeIfPresent(statusID, forKey: "StatusID")
        try container.encodeIfPresent(targetCostImpactID, forKey: "TargetCostImpactID")
        try container.encodeIfPresent(targetImpactID, forKey: "TargetImpactID")
        try container.encodeIfPresent(targetProbabilityID, forKey: "TargetProbabilityID")
        try container.encodeIfPresent(targetProductionAvailabilityImpactID, forKey: "TargetProductionAvailabilityImpactID")
        try container.encodeIfPresent(targetRecoveryImpactID, forKey: "TargetRecoveryImpactID")
        try container.encodeIfPresent(targetScheduleImpactID, forKey: "TargetScheduleImpactID")
        try container.encodeIfPresent(trendID, forKey: "TrendID")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIRiskDTO else { return false }
      guard self.actualFinishDate == object.actualFinishDate else { return false }
      guard self.actualStartDate == object.actualStartDate else { return false }
      guard self.assignedByUser == object.assignedByUser else { return false }
      guard self.assignedByUserID == object.assignedByUserID else { return false }
      guard self.assignedToRole == object.assignedToRole else { return false }
      guard self.assignedToRoleID == object.assignedToRoleID else { return false }
      guard self.assignedToUser == object.assignedToUser else { return false }
      guard self.assignedToUserGroup == object.assignedToUserGroup else { return false }
      guard self.assignedToUserGroupID == object.assignedToUserGroupID else { return false }
      guard self.assignedToUserID == object.assignedToUserID else { return false }
      guard self.cause == object.cause else { return false }
      guard self.companyID == object.companyID else { return false }
      guard self.consequence == object.consequence else { return false }
      guard self.contingencyPlan == object.contingencyPlan else { return false }
      guard self.contingencyTrigger == object.contingencyTrigger else { return false }
      guard self.costImpactID == object.costImpactID else { return false }
      guard self.dateActivated == object.dateActivated else { return false }
      guard self.dateDue == object.dateDue else { return false }
      guard self.dateDueDateAssigned == object.dateDueDateAssigned else { return false }
      guard self.dateIdentified == object.dateIdentified else { return false }
      guard self.description == object.description else { return false }
      guard self.event == object.event else { return false }
      guard self.forecastDate == object.forecastDate else { return false }
      guard self.id == object.id else { return false }
      guard self.identifiedBy == object.identifiedBy else { return false }
      guard self.impactID == object.impactID else { return false }
      guard self.isUrgent == object.isUrgent else { return false }
      guard self.level1 == object.level1 else { return false }
      guard self.meetingTypeID == object.meetingTypeID else { return false }
      guard self.mitigationPlan == object.mitigationPlan else { return false }
      guard self.mitigationStatus == object.mitigationStatus else { return false }
      guard self.name == object.name else { return false }
      guard self.nextReviewDate == object.nextReviewDate else { return false }
      guard self.notes == object.notes else { return false }
      guard self.phase == object.phase else { return false }
      guard self.plannedFinishDate == object.plannedFinishDate else { return false }
      guard self.plannedStartDate == object.plannedStartDate else { return false }
      guard self.priorityID == object.priorityID else { return false }
      guard self.probabilityID == object.probabilityID else { return false }
      guard self.productionAvailabilityImpactID == object.productionAvailabilityImpactID else { return false }
      guard self.projectID == object.projectID else { return false }
      guard self.projectPhaseID == object.projectPhaseID else { return false }
      guard self.recoveryImpactID == object.recoveryImpactID else { return false }
      guard self.riskCategoryIDs == object.riskCategoryIDs else { return false }
      guard self.riskFunctionalAreaID == object.riskFunctionalAreaID else { return false }
      guard self.riskID == object.riskID else { return false }
      guard self.riskMitigationPlanID == object.riskMitigationPlanID else { return false }
      guard self.riskMitigationStatusID == object.riskMitigationStatusID else { return false }
      guard self.riskType == object.riskType else { return false }
      guard self.riskTypeID == object.riskTypeID else { return false }
      guard self.scheduleImpactID == object.scheduleImpactID else { return false }
      guard self.sequenceNumber == object.sequenceNumber else { return false }
      guard self.sourceID == object.sourceID else { return false }
      guard self.sourceImportID == object.sourceImportID else { return false }
      guard self.sourceKey == object.sourceKey else { return false }
      guard self.status == object.status else { return false }
      guard self.statusID == object.statusID else { return false }
      guard self.targetCostImpactID == object.targetCostImpactID else { return false }
      guard self.targetImpactID == object.targetImpactID else { return false }
      guard self.targetProbabilityID == object.targetProbabilityID else { return false }
      guard self.targetProductionAvailabilityImpactID == object.targetProductionAvailabilityImpactID else { return false }
      guard self.targetRecoveryImpactID == object.targetRecoveryImpactID else { return false }
      guard self.targetScheduleImpactID == object.targetScheduleImpactID else { return false }
      guard self.trendID == object.trendID else { return false }
      return true
    }

    public static func == (lhs: O3APIRiskDTO, rhs: O3APIRiskDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}