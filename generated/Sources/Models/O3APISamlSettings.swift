//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class O3APISamlSettings: APIModel {

    public var certificate: String?

    public var enableSAMLAuthentication: Bool?

    public var issuer: String?

    public var requireSAMLAuthentication: Bool?

    public var singleSignOnUrl: String?

    public init(certificate: String? = nil, enableSAMLAuthentication: Bool? = nil, issuer: String? = nil, requireSAMLAuthentication: Bool? = nil, singleSignOnUrl: String? = nil) {
        self.certificate = certificate
        self.enableSAMLAuthentication = enableSAMLAuthentication
        self.issuer = issuer
        self.requireSAMLAuthentication = requireSAMLAuthentication
        self.singleSignOnUrl = singleSignOnUrl
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        certificate = try container.decodeIfPresent("Certificate")
        enableSAMLAuthentication = try container.decodeIfPresent("EnableSAMLAuthentication")
        issuer = try container.decodeIfPresent("Issuer")
        requireSAMLAuthentication = try container.decodeIfPresent("RequireSAMLAuthentication")
        singleSignOnUrl = try container.decodeIfPresent("SingleSignOnUrl")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(certificate, forKey: "Certificate")
        try container.encodeIfPresent(enableSAMLAuthentication, forKey: "EnableSAMLAuthentication")
        try container.encodeIfPresent(issuer, forKey: "Issuer")
        try container.encodeIfPresent(requireSAMLAuthentication, forKey: "RequireSAMLAuthentication")
        try container.encodeIfPresent(singleSignOnUrl, forKey: "SingleSignOnUrl")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? O3APISamlSettings else { return false }
      guard self.certificate == object.certificate else { return false }
      guard self.enableSAMLAuthentication == object.enableSAMLAuthentication else { return false }
      guard self.issuer == object.issuer else { return false }
      guard self.requireSAMLAuthentication == object.requireSAMLAuthentication else { return false }
      guard self.singleSignOnUrl == object.singleSignOnUrl else { return false }
      return true
    }

    public static func == (lhs: O3APISamlSettings, rhs: O3APISamlSettings) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
