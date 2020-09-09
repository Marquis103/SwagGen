//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIViewUserAccount: APIModel {

    public var aPIKey: String?

    public var allowAddUsersToTraining: Bool?

    public var allowCreateManualTrainingLogEntries: Bool?

    public var allowCreateUsersInTraining: Bool?

    public var allowDeleteManualTrainingLogEntries: Bool?

    public var allowImportTrainingLogEntries: Bool?

    public var allowViewCompanyTrainingLog: Bool?

    public var allowViewTrainingLog: Bool?

    public var canViewScorecards: Bool?

    public var city: String?

    public var companyID: Int?

    public var companyName: String?

    public var companyUniqueID: ID?

    public var countryOfResidence: String?

    public var createdByUser: String?

    public var createdByUserID: Int?

    public var dateCreated: DateTime?

    public var dateLastActivated: DateTime?

    public var dateModified: DateTime?

    public var defaultPlant: String?

    public var defaultPlantID: Int?

    public var department: String?

    public var departmentID: Int?

    public var description: String?

    public var discipline: String?

    public var disciplineID: Int?

    public var displayName: String?

    public var email: String?

    public var englishSpoken: String?

    public var englishSpokenProficiencyID: Int?

    public var englishWritten: String?

    public var englishWrittenProficiencyID: Int?

    public var failedLoginAttempts: Int?

    public var id: Int?

    public var internalID: String?

    public var isActive: Bool?

    public var isCompanyTrainingAdmin: Bool?

    public var isContractor: Bool?

    public var isDeleted: Bool?

    public var isLocked: Bool?

    public var isSystemAdmin: Bool?

    public var isTrainingAdmin: Bool?

    public var keepActive: Bool?

    public var lastLoggedIn: DateTime?

    public var lastPasswordChangeDate: DateTime?

    public var mobilePIN: String?

    public var mobilePhone: String?

    public var mobileSalt: String?

    public var modifiedByUser: String?

    public var modifiedByUserID: Int?

    public var notificationEmail: String?

    public var officePhone: String?

    public var password: String?

    public var position: String?

    public var positionID: Int?

    public var primaryLanguage: String?

    public var requirePasswordReset: Bool?

    public var sAMLSingleSignOn: Bool?

    public var state: String?

    public var supervisorUser: String?

    public var supervisorUserID: Int?

    public var uniqueID: ID?

    public var username: String?

    public init(aPIKey: String? = nil, allowAddUsersToTraining: Bool? = nil, allowCreateManualTrainingLogEntries: Bool? = nil, allowCreateUsersInTraining: Bool? = nil, allowDeleteManualTrainingLogEntries: Bool? = nil, allowImportTrainingLogEntries: Bool? = nil, allowViewCompanyTrainingLog: Bool? = nil, allowViewTrainingLog: Bool? = nil, canViewScorecards: Bool? = nil, city: String? = nil, companyID: Int? = nil, companyName: String? = nil, companyUniqueID: ID? = nil, countryOfResidence: String? = nil, createdByUser: String? = nil, createdByUserID: Int? = nil, dateCreated: DateTime? = nil, dateLastActivated: DateTime? = nil, dateModified: DateTime? = nil, defaultPlant: String? = nil, defaultPlantID: Int? = nil, department: String? = nil, departmentID: Int? = nil, description: String? = nil, discipline: String? = nil, disciplineID: Int? = nil, displayName: String? = nil, email: String? = nil, englishSpoken: String? = nil, englishSpokenProficiencyID: Int? = nil, englishWritten: String? = nil, englishWrittenProficiencyID: Int? = nil, failedLoginAttempts: Int? = nil, id: Int? = nil, internalID: String? = nil, isActive: Bool? = nil, isCompanyTrainingAdmin: Bool? = nil, isContractor: Bool? = nil, isDeleted: Bool? = nil, isLocked: Bool? = nil, isSystemAdmin: Bool? = nil, isTrainingAdmin: Bool? = nil, keepActive: Bool? = nil, lastLoggedIn: DateTime? = nil, lastPasswordChangeDate: DateTime? = nil, mobilePIN: String? = nil, mobilePhone: String? = nil, mobileSalt: String? = nil, modifiedByUser: String? = nil, modifiedByUserID: Int? = nil, notificationEmail: String? = nil, officePhone: String? = nil, password: String? = nil, position: String? = nil, positionID: Int? = nil, primaryLanguage: String? = nil, requirePasswordReset: Bool? = nil, sAMLSingleSignOn: Bool? = nil, state: String? = nil, supervisorUser: String? = nil, supervisorUserID: Int? = nil, uniqueID: ID? = nil, username: String? = nil) {
        self.aPIKey = aPIKey
        self.allowAddUsersToTraining = allowAddUsersToTraining
        self.allowCreateManualTrainingLogEntries = allowCreateManualTrainingLogEntries
        self.allowCreateUsersInTraining = allowCreateUsersInTraining
        self.allowDeleteManualTrainingLogEntries = allowDeleteManualTrainingLogEntries
        self.allowImportTrainingLogEntries = allowImportTrainingLogEntries
        self.allowViewCompanyTrainingLog = allowViewCompanyTrainingLog
        self.allowViewTrainingLog = allowViewTrainingLog
        self.canViewScorecards = canViewScorecards
        self.city = city
        self.companyID = companyID
        self.companyName = companyName
        self.companyUniqueID = companyUniqueID
        self.countryOfResidence = countryOfResidence
        self.createdByUser = createdByUser
        self.createdByUserID = createdByUserID
        self.dateCreated = dateCreated
        self.dateLastActivated = dateLastActivated
        self.dateModified = dateModified
        self.defaultPlant = defaultPlant
        self.defaultPlantID = defaultPlantID
        self.department = department
        self.departmentID = departmentID
        self.description = description
        self.discipline = discipline
        self.disciplineID = disciplineID
        self.displayName = displayName
        self.email = email
        self.englishSpoken = englishSpoken
        self.englishSpokenProficiencyID = englishSpokenProficiencyID
        self.englishWritten = englishWritten
        self.englishWrittenProficiencyID = englishWrittenProficiencyID
        self.failedLoginAttempts = failedLoginAttempts
        self.id = id
        self.internalID = internalID
        self.isActive = isActive
        self.isCompanyTrainingAdmin = isCompanyTrainingAdmin
        self.isContractor = isContractor
        self.isDeleted = isDeleted
        self.isLocked = isLocked
        self.isSystemAdmin = isSystemAdmin
        self.isTrainingAdmin = isTrainingAdmin
        self.keepActive = keepActive
        self.lastLoggedIn = lastLoggedIn
        self.lastPasswordChangeDate = lastPasswordChangeDate
        self.mobilePIN = mobilePIN
        self.mobilePhone = mobilePhone
        self.mobileSalt = mobileSalt
        self.modifiedByUser = modifiedByUser
        self.modifiedByUserID = modifiedByUserID
        self.notificationEmail = notificationEmail
        self.officePhone = officePhone
        self.password = password
        self.position = position
        self.positionID = positionID
        self.primaryLanguage = primaryLanguage
        self.requirePasswordReset = requirePasswordReset
        self.sAMLSingleSignOn = sAMLSingleSignOn
        self.state = state
        self.supervisorUser = supervisorUser
        self.supervisorUserID = supervisorUserID
        self.uniqueID = uniqueID
        self.username = username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        aPIKey = try container.decodeIfPresent("APIKey")
        allowAddUsersToTraining = try container.decodeIfPresent("AllowAddUsersToTraining")
        allowCreateManualTrainingLogEntries = try container.decodeIfPresent("AllowCreateManualTrainingLogEntries")
        allowCreateUsersInTraining = try container.decodeIfPresent("AllowCreateUsersInTraining")
        allowDeleteManualTrainingLogEntries = try container.decodeIfPresent("AllowDeleteManualTrainingLogEntries")
        allowImportTrainingLogEntries = try container.decodeIfPresent("AllowImportTrainingLogEntries")
        allowViewCompanyTrainingLog = try container.decodeIfPresent("AllowViewCompanyTrainingLog")
        allowViewTrainingLog = try container.decodeIfPresent("AllowViewTrainingLog")
        canViewScorecards = try container.decodeIfPresent("CanViewScorecards")
        city = try container.decodeIfPresent("City")
        companyID = try container.decodeIfPresent("CompanyID")
        companyName = try container.decodeIfPresent("CompanyName")
        companyUniqueID = try container.decodeIfPresent("CompanyUniqueID")
        countryOfResidence = try container.decodeIfPresent("CountryOfResidence")
        createdByUser = try container.decodeIfPresent("CreatedByUser")
        createdByUserID = try container.decodeIfPresent("CreatedByUserID")
        dateCreated = try container.decodeIfPresent("DateCreated")
        dateLastActivated = try container.decodeIfPresent("DateLastActivated")
        dateModified = try container.decodeIfPresent("DateModified")
        defaultPlant = try container.decodeIfPresent("DefaultPlant")
        defaultPlantID = try container.decodeIfPresent("DefaultPlantID")
        department = try container.decodeIfPresent("Department")
        departmentID = try container.decodeIfPresent("DepartmentID")
        description = try container.decodeIfPresent("Description")
        discipline = try container.decodeIfPresent("Discipline")
        disciplineID = try container.decodeIfPresent("DisciplineID")
        displayName = try container.decodeIfPresent("DisplayName")
        email = try container.decodeIfPresent("Email")
        englishSpoken = try container.decodeIfPresent("EnglishSpoken")
        englishSpokenProficiencyID = try container.decodeIfPresent("EnglishSpokenProficiencyID")
        englishWritten = try container.decodeIfPresent("EnglishWritten")
        englishWrittenProficiencyID = try container.decodeIfPresent("EnglishWrittenProficiencyID")
        failedLoginAttempts = try container.decodeIfPresent("FailedLoginAttempts")
        id = try container.decodeIfPresent("ID")
        internalID = try container.decodeIfPresent("InternalID")
        isActive = try container.decodeIfPresent("IsActive")
        isCompanyTrainingAdmin = try container.decodeIfPresent("IsCompanyTrainingAdmin")
        isContractor = try container.decodeIfPresent("IsContractor")
        isDeleted = try container.decodeIfPresent("IsDeleted")
        isLocked = try container.decodeIfPresent("IsLocked")
        isSystemAdmin = try container.decodeIfPresent("IsSystemAdmin")
        isTrainingAdmin = try container.decodeIfPresent("IsTrainingAdmin")
        keepActive = try container.decodeIfPresent("KeepActive")
        lastLoggedIn = try container.decodeIfPresent("LastLoggedIn")
        lastPasswordChangeDate = try container.decodeIfPresent("LastPasswordChangeDate")
        mobilePIN = try container.decodeIfPresent("MobilePIN")
        mobilePhone = try container.decodeIfPresent("MobilePhone")
        mobileSalt = try container.decodeIfPresent("MobileSalt")
        modifiedByUser = try container.decodeIfPresent("ModifiedByUser")
        modifiedByUserID = try container.decodeIfPresent("ModifiedByUserID")
        notificationEmail = try container.decodeIfPresent("NotificationEmail")
        officePhone = try container.decodeIfPresent("OfficePhone")
        password = try container.decodeIfPresent("Password")
        position = try container.decodeIfPresent("Position")
        positionID = try container.decodeIfPresent("PositionID")
        primaryLanguage = try container.decodeIfPresent("PrimaryLanguage")
        requirePasswordReset = try container.decodeIfPresent("RequirePasswordReset")
        sAMLSingleSignOn = try container.decodeIfPresent("SAMLSingleSignOn")
        state = try container.decodeIfPresent("State")
        supervisorUser = try container.decodeIfPresent("SupervisorUser")
        supervisorUserID = try container.decodeIfPresent("SupervisorUserID")
        uniqueID = try container.decodeIfPresent("UniqueID")
        username = try container.decodeIfPresent("Username")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(aPIKey, forKey: "APIKey")
        try container.encodeIfPresent(allowAddUsersToTraining, forKey: "AllowAddUsersToTraining")
        try container.encodeIfPresent(allowCreateManualTrainingLogEntries, forKey: "AllowCreateManualTrainingLogEntries")
        try container.encodeIfPresent(allowCreateUsersInTraining, forKey: "AllowCreateUsersInTraining")
        try container.encodeIfPresent(allowDeleteManualTrainingLogEntries, forKey: "AllowDeleteManualTrainingLogEntries")
        try container.encodeIfPresent(allowImportTrainingLogEntries, forKey: "AllowImportTrainingLogEntries")
        try container.encodeIfPresent(allowViewCompanyTrainingLog, forKey: "AllowViewCompanyTrainingLog")
        try container.encodeIfPresent(allowViewTrainingLog, forKey: "AllowViewTrainingLog")
        try container.encodeIfPresent(canViewScorecards, forKey: "CanViewScorecards")
        try container.encodeIfPresent(city, forKey: "City")
        try container.encodeIfPresent(companyID, forKey: "CompanyID")
        try container.encodeIfPresent(companyName, forKey: "CompanyName")
        try container.encodeIfPresent(companyUniqueID, forKey: "CompanyUniqueID")
        try container.encodeIfPresent(countryOfResidence, forKey: "CountryOfResidence")
        try container.encodeIfPresent(createdByUser, forKey: "CreatedByUser")
        try container.encodeIfPresent(createdByUserID, forKey: "CreatedByUserID")
        try container.encodeIfPresent(dateCreated, forKey: "DateCreated")
        try container.encodeIfPresent(dateLastActivated, forKey: "DateLastActivated")
        try container.encodeIfPresent(dateModified, forKey: "DateModified")
        try container.encodeIfPresent(defaultPlant, forKey: "DefaultPlant")
        try container.encodeIfPresent(defaultPlantID, forKey: "DefaultPlantID")
        try container.encodeIfPresent(department, forKey: "Department")
        try container.encodeIfPresent(departmentID, forKey: "DepartmentID")
        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(discipline, forKey: "Discipline")
        try container.encodeIfPresent(disciplineID, forKey: "DisciplineID")
        try container.encodeIfPresent(displayName, forKey: "DisplayName")
        try container.encodeIfPresent(email, forKey: "Email")
        try container.encodeIfPresent(englishSpoken, forKey: "EnglishSpoken")
        try container.encodeIfPresent(englishSpokenProficiencyID, forKey: "EnglishSpokenProficiencyID")
        try container.encodeIfPresent(englishWritten, forKey: "EnglishWritten")
        try container.encodeIfPresent(englishWrittenProficiencyID, forKey: "EnglishWrittenProficiencyID")
        try container.encodeIfPresent(failedLoginAttempts, forKey: "FailedLoginAttempts")
        try container.encodeIfPresent(id, forKey: "ID")
        try container.encodeIfPresent(internalID, forKey: "InternalID")
        try container.encodeIfPresent(isActive, forKey: "IsActive")
        try container.encodeIfPresent(isCompanyTrainingAdmin, forKey: "IsCompanyTrainingAdmin")
        try container.encodeIfPresent(isContractor, forKey: "IsContractor")
        try container.encodeIfPresent(isDeleted, forKey: "IsDeleted")
        try container.encodeIfPresent(isLocked, forKey: "IsLocked")
        try container.encodeIfPresent(isSystemAdmin, forKey: "IsSystemAdmin")
        try container.encodeIfPresent(isTrainingAdmin, forKey: "IsTrainingAdmin")
        try container.encodeIfPresent(keepActive, forKey: "KeepActive")
        try container.encodeIfPresent(lastLoggedIn, forKey: "LastLoggedIn")
        try container.encodeIfPresent(lastPasswordChangeDate, forKey: "LastPasswordChangeDate")
        try container.encodeIfPresent(mobilePIN, forKey: "MobilePIN")
        try container.encodeIfPresent(mobilePhone, forKey: "MobilePhone")
        try container.encodeIfPresent(mobileSalt, forKey: "MobileSalt")
        try container.encodeIfPresent(modifiedByUser, forKey: "ModifiedByUser")
        try container.encodeIfPresent(modifiedByUserID, forKey: "ModifiedByUserID")
        try container.encodeIfPresent(notificationEmail, forKey: "NotificationEmail")
        try container.encodeIfPresent(officePhone, forKey: "OfficePhone")
        try container.encodeIfPresent(password, forKey: "Password")
        try container.encodeIfPresent(position, forKey: "Position")
        try container.encodeIfPresent(positionID, forKey: "PositionID")
        try container.encodeIfPresent(primaryLanguage, forKey: "PrimaryLanguage")
        try container.encodeIfPresent(requirePasswordReset, forKey: "RequirePasswordReset")
        try container.encodeIfPresent(sAMLSingleSignOn, forKey: "SAMLSingleSignOn")
        try container.encodeIfPresent(state, forKey: "State")
        try container.encodeIfPresent(supervisorUser, forKey: "SupervisorUser")
        try container.encodeIfPresent(supervisorUserID, forKey: "SupervisorUserID")
        try container.encodeIfPresent(uniqueID, forKey: "UniqueID")
        try container.encodeIfPresent(username, forKey: "Username")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIViewUserAccount else { return false }
      guard self.aPIKey == object.aPIKey else { return false }
      guard self.allowAddUsersToTraining == object.allowAddUsersToTraining else { return false }
      guard self.allowCreateManualTrainingLogEntries == object.allowCreateManualTrainingLogEntries else { return false }
      guard self.allowCreateUsersInTraining == object.allowCreateUsersInTraining else { return false }
      guard self.allowDeleteManualTrainingLogEntries == object.allowDeleteManualTrainingLogEntries else { return false }
      guard self.allowImportTrainingLogEntries == object.allowImportTrainingLogEntries else { return false }
      guard self.allowViewCompanyTrainingLog == object.allowViewCompanyTrainingLog else { return false }
      guard self.allowViewTrainingLog == object.allowViewTrainingLog else { return false }
      guard self.canViewScorecards == object.canViewScorecards else { return false }
      guard self.city == object.city else { return false }
      guard self.companyID == object.companyID else { return false }
      guard self.companyName == object.companyName else { return false }
      guard self.companyUniqueID == object.companyUniqueID else { return false }
      guard self.countryOfResidence == object.countryOfResidence else { return false }
      guard self.createdByUser == object.createdByUser else { return false }
      guard self.createdByUserID == object.createdByUserID else { return false }
      guard self.dateCreated == object.dateCreated else { return false }
      guard self.dateLastActivated == object.dateLastActivated else { return false }
      guard self.dateModified == object.dateModified else { return false }
      guard self.defaultPlant == object.defaultPlant else { return false }
      guard self.defaultPlantID == object.defaultPlantID else { return false }
      guard self.department == object.department else { return false }
      guard self.departmentID == object.departmentID else { return false }
      guard self.description == object.description else { return false }
      guard self.discipline == object.discipline else { return false }
      guard self.disciplineID == object.disciplineID else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.email == object.email else { return false }
      guard self.englishSpoken == object.englishSpoken else { return false }
      guard self.englishSpokenProficiencyID == object.englishSpokenProficiencyID else { return false }
      guard self.englishWritten == object.englishWritten else { return false }
      guard self.englishWrittenProficiencyID == object.englishWrittenProficiencyID else { return false }
      guard self.failedLoginAttempts == object.failedLoginAttempts else { return false }
      guard self.id == object.id else { return false }
      guard self.internalID == object.internalID else { return false }
      guard self.isActive == object.isActive else { return false }
      guard self.isCompanyTrainingAdmin == object.isCompanyTrainingAdmin else { return false }
      guard self.isContractor == object.isContractor else { return false }
      guard self.isDeleted == object.isDeleted else { return false }
      guard self.isLocked == object.isLocked else { return false }
      guard self.isSystemAdmin == object.isSystemAdmin else { return false }
      guard self.isTrainingAdmin == object.isTrainingAdmin else { return false }
      guard self.keepActive == object.keepActive else { return false }
      guard self.lastLoggedIn == object.lastLoggedIn else { return false }
      guard self.lastPasswordChangeDate == object.lastPasswordChangeDate else { return false }
      guard self.mobilePIN == object.mobilePIN else { return false }
      guard self.mobilePhone == object.mobilePhone else { return false }
      guard self.mobileSalt == object.mobileSalt else { return false }
      guard self.modifiedByUser == object.modifiedByUser else { return false }
      guard self.modifiedByUserID == object.modifiedByUserID else { return false }
      guard self.notificationEmail == object.notificationEmail else { return false }
      guard self.officePhone == object.officePhone else { return false }
      guard self.password == object.password else { return false }
      guard self.position == object.position else { return false }
      guard self.positionID == object.positionID else { return false }
      guard self.primaryLanguage == object.primaryLanguage else { return false }
      guard self.requirePasswordReset == object.requirePasswordReset else { return false }
      guard self.sAMLSingleSignOn == object.sAMLSingleSignOn else { return false }
      guard self.state == object.state else { return false }
      guard self.supervisorUser == object.supervisorUser else { return false }
      guard self.supervisorUserID == object.supervisorUserID else { return false }
      guard self.uniqueID == object.uniqueID else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: O3APIViewUserAccount, rhs: O3APIViewUserAccount) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}