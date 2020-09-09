//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIToolTimeSettingsDTO: APIModel {

    public var dataRequirementSettings: [O3APIDataRequirementSetting]?

    public var entityMaskSetting: O3APIEntityMaskSetting?

    public var toolTimeSettings: O3APIToolTimeSettings?

    public init(dataRequirementSettings: [O3APIDataRequirementSetting]? = nil, entityMaskSetting: O3APIEntityMaskSetting? = nil, toolTimeSettings: O3APIToolTimeSettings? = nil) {
        self.dataRequirementSettings = dataRequirementSettings
        self.entityMaskSetting = entityMaskSetting
        self.toolTimeSettings = toolTimeSettings
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        dataRequirementSettings = try container.decodeArrayIfPresent("DataRequirementSettings")
        entityMaskSetting = try container.decodeIfPresent("EntityMaskSetting")
        toolTimeSettings = try container.decodeIfPresent("ToolTimeSettings")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(dataRequirementSettings, forKey: "DataRequirementSettings")
        try container.encodeIfPresent(entityMaskSetting, forKey: "EntityMaskSetting")
        try container.encodeIfPresent(toolTimeSettings, forKey: "ToolTimeSettings")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIToolTimeSettingsDTO else { return false }
      guard self.dataRequirementSettings == object.dataRequirementSettings else { return false }
      guard self.entityMaskSetting == object.entityMaskSetting else { return false }
      guard self.toolTimeSettings == object.toolTimeSettings else { return false }
      return true
    }

    public static func == (lhs: O3APIToolTimeSettingsDTO, rhs: O3APIToolTimeSettingsDTO) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}