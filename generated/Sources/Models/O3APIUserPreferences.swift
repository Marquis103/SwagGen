//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APIUserPreferences: APIModel {

    public var autoAddWatcherSettings: [O3APIAutoAddWatcherSetting]?

    public var recentProgramLinks: [O3APIRecentNavigationLink]?

    public var recentProjectLinks: [O3APIRecentNavigationLink]?

    public init(autoAddWatcherSettings: [O3APIAutoAddWatcherSetting]? = nil, recentProgramLinks: [O3APIRecentNavigationLink]? = nil, recentProjectLinks: [O3APIRecentNavigationLink]? = nil) {
        self.autoAddWatcherSettings = autoAddWatcherSettings
        self.recentProgramLinks = recentProgramLinks
        self.recentProjectLinks = recentProjectLinks
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        autoAddWatcherSettings = try container.decodeArrayIfPresent("AutoAddWatcherSettings")
        recentProgramLinks = try container.decodeArrayIfPresent("RecentProgramLinks")
        recentProjectLinks = try container.decodeArrayIfPresent("RecentProjectLinks")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(autoAddWatcherSettings, forKey: "AutoAddWatcherSettings")
        try container.encodeIfPresent(recentProgramLinks, forKey: "RecentProgramLinks")
        try container.encodeIfPresent(recentProjectLinks, forKey: "RecentProjectLinks")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APIUserPreferences else { return false }
      guard self.autoAddWatcherSettings == object.autoAddWatcherSettings else { return false }
      guard self.recentProgramLinks == object.recentProgramLinks else { return false }
      guard self.recentProjectLinks == object.recentProjectLinks else { return false }
      return true
    }

    public static func == (lhs: O3APIUserPreferences, rhs: O3APIUserPreferences) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
