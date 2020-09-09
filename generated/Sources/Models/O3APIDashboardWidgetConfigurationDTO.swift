//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIDashboardWidgetConfigurationDTO: APIModel {

    public var bestPracticeMeasurement: O3APIBestPracticeMeasurementDefinitionDTO?

    public var dataSourcesList: [O3APISimpleListStringDTO]?

    public var durationOptions: [O3APIFilterField]?

    public var filterRules: O3APIFilterGroup?

    public var isGlobalDashboard: Bool?

    public var projectsList: [O3APISimpleListDTO]?

    public var settingsFields: [O3APISettingsField]?

    public var settingsJson: String?

    public var widget: O3APIDashboardWidgetDTO?

    public var widgetTypeDisplayName: String?

    public init(bestPracticeMeasurement: O3APIBestPracticeMeasurementDefinitionDTO? = nil, dataSourcesList: [O3APISimpleListStringDTO]? = nil, durationOptions: [O3APIFilterField]? = nil, filterRules: O3APIFilterGroup? = nil, isGlobalDashboard: Bool? = nil, projectsList: [O3APISimpleListDTO]? = nil, settingsFields: [O3APISettingsField]? = nil, settingsJson: String? = nil, widget: O3APIDashboardWidgetDTO? = nil, widgetTypeDisplayName: String? = nil) {
        self.bestPracticeMeasurement = bestPracticeMeasurement
        self.dataSourcesList = dataSourcesList
        self.durationOptions = durationOptions
        self.filterRules = filterRules
        self.isGlobalDashboard = isGlobalDashboard
        self.projectsList = projectsList
        self.settingsFields = settingsFields
        self.settingsJson = settingsJson
        self.widget = widget
        self.widgetTypeDisplayName = widgetTypeDisplayName
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bestPracticeMeasurement = try container.decodeIfPresent("BestPracticeMeasurement")
        dataSourcesList = try container.decodeArrayIfPresent("DataSourcesList")
        durationOptions = try container.decodeArrayIfPresent("DurationOptions")
        filterRules = try container.decodeIfPresent("FilterRules")
        isGlobalDashboard = try container.decodeIfPresent("IsGlobalDashboard")
        projectsList = try container.decodeArrayIfPresent("ProjectsList")
        settingsFields = try container.decodeArrayIfPresent("SettingsFields")
        settingsJson = try container.decodeIfPresent("SettingsJson")
        widget = try container.decodeIfPresent("Widget")
        widgetTypeDisplayName = try container.decodeIfPresent("WidgetTypeDisplayName")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bestPracticeMeasurement, forKey: "BestPracticeMeasurement")
        try container.encodeIfPresent(dataSourcesList, forKey: "DataSourcesList")
        try container.encodeIfPresent(durationOptions, forKey: "DurationOptions")
        try container.encodeIfPresent(filterRules, forKey: "FilterRules")
        try container.encodeIfPresent(isGlobalDashboard, forKey: "IsGlobalDashboard")
        try container.encodeIfPresent(projectsList, forKey: "ProjectsList")
        try container.encodeIfPresent(settingsFields, forKey: "SettingsFields")
        try container.encodeIfPresent(settingsJson, forKey: "SettingsJson")
        try container.encodeIfPresent(widget, forKey: "Widget")
        try container.encodeIfPresent(widgetTypeDisplayName, forKey: "WidgetTypeDisplayName")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIDashboardWidgetConfigurationDTO else { return false }
      guard self.bestPracticeMeasurement == object.bestPracticeMeasurement else { return false }
      guard self.dataSourcesList == object.dataSourcesList else { return false }
      guard self.durationOptions == object.durationOptions else { return false }
      guard self.filterRules == object.filterRules else { return false }
      guard self.isGlobalDashboard == object.isGlobalDashboard else { return false }
      guard self.projectsList == object.projectsList else { return false }
      guard self.settingsFields == object.settingsFields else { return false }
      guard self.settingsJson == object.settingsJson else { return false }
      guard self.widget == object.widget else { return false }
      guard self.widgetTypeDisplayName == object.widgetTypeDisplayName else { return false }
      return true
    }

    public static func == (lhs: O3APIDashboardWidgetConfigurationDTO, rhs: O3APIDashboardWidgetConfigurationDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}